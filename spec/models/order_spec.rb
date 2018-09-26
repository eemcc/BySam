require 'rails_helper'

describe Order do
  context "when order has no user" do
    let(:product) { Product.create!(name: "White Monkeys Fist")}

    it "is not valid" do
      expect(Order.new(product:product, total:20)).not_to be_valid
    end
  end
end
