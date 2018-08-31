require 'rails_helper'

describe Product do
  context "when the product has comments" do
    let(:product) { Product.create!(name: "White Monkeys Fist") }
    let(:user) { User.create!(email: "eemccracken@gmail.com", password: "Testing") }

    before do
      product.comments.create!(rating: 1, user: user, body: "Awful!")
      product.comments.create!(rating: 3, user: user, body: "Ok!")
      product.comments.create!(rating: 5, user: user, body: "Great!")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end

    it "is not valid without a name" do
      expect(Product.new(description: "Nice Earrings")).not_to be_valid
    end
  end
end