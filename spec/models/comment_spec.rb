require 'rails_helper'

describe Comment do
  context "when comment has no user" do
    let(:product) { Product.create!(name: "White Monkeys Fist") }
    let(:user) { FactoryBot.create(:user) }

    before do
      product.comment.create!(rating: 1, body: "Awful!")
    end

    it "is not valid" do
      expect(comment.user).not_to be_valid
    end
  end

  context "when comment has no body" do
    let(:product) { Product.create!(name: "White Monkeys Fist") }
    let(:user) { FactoryBot.create(:user) }

    before do
      product.comment.create!(rating: 1, user: user)
    end

    it "is not valid" do
      expect(comment.body).not_to be_valid
    end
  end

  context "when comment has no rating" do
      let(:product) { Product.create!(name: "White Monkeys Fist") }
      let(:user) { FactoryBot.create(:user) }

      before do
        product.comment.create!(user: user, body: "Awful!")
      end

      it "is not valid"
        expect(comment.rating).not_to be_valid
      end
  end
