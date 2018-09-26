require 'rails_helper'

describe Order do
  context "when order has no user" do
    let(:product) { Product.create!(name: "White Monkeys Fist") }
    let(:user) { FactoryBot.create(:user) }

    before do
      product.orders.create!(product:"White Monkeys Fist")
    end

    it "is not valid" do
      expect(order.user).not_to be_valid
    end
  end
end
