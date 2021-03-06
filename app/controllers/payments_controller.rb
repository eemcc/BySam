class PaymentsController < ApplicationController
  def index
  end

  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
    # Create charge on Stripe servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: (@product.price)*100,
        currency: "usd",
        source: token,
        description: params[:stripeEmail]
      )

      if charge.paid
        Order.create(product_id: @product.id, user_id: @user.id, total: @product.price)
      end

    rescue Stripe::CardError => e
      #card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
      redirect_to payment_create_path
    end
  end
end
