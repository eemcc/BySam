class OrdersController < ApplicationController
  def index
    @orders = Order.includes(:product).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    before_action :authenticate_user!
  end

  def create
  end

  def destroy
  end
end
