require 'rails_helper'

describe Comment do
  context "when comment has no user" do
    let(:product) { Product.create!(name: "White Monkeys Fist") }
    let(:user) { FactoryBot.create(:user) }

    it "is not valid" do
      expect(Comment.new(product:product, rating: 4, body: "good")).not_to be_valid
    end
  end

  context "when comment has no body" do
    let(:product) { Product.create!(name: "White Monkeys Fist") }
    let(:user) { FactoryBot.create(:user) }

    it "is not valid" do
      expect(Comment.new(product:product, rating: 4, user: user)).not_to be_valid
    end
  end

  context "when comment has no rating" do
      let(:product) { Product.create!(name: "White Monkeys Fist") }
      let(:user) { FactoryBot.create(:user) }

      it "is not valid" do
        expect(Comment.new(product:product, body: "good", user: user)).not_to be_valid
      end
  end
end
