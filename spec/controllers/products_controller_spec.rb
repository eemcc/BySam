require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
    @product = Product.create!(name: "White Monkeys Fist" id: 3)
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  context "GET #show" do
    it "renders the login page" do
      get :show, params: {id: @product.id}
      expect(response).to redirect_to new_user_session_path
    end
  end

  context "GET #new" do
    before do
      sign_in @user
    end

    it "redirects to new product page" do
      get :new, params: {id: @product.id}
      expect(response).to be_ok
    end
  end

  context "GET #edit" do
    before do
      sign_in @user
    end

    it "redirects to edit product page" do
      get :edit, params: {id: @product.id}
      expect(response).to be_ok
    end
  end

  context "POST #create" do
    before do
      sign_in @user
    end

    it "creates a product" do
      @product = Product.create!(name: "White Monkeys Fist")
      expect(response).to be_successful
    end
  end

  describe "PATCH #update" do
    before do
      sign_in @user
    end
    it "updates the product and redirects" do
      patch :update, id: @product.id, product: { name: "earrings",  price: "20", description: 'nice'}
      expect(response).to be_redirect
    end
  end

  context "DELETE" do
    before do
      sign_in @user
    end

    it "can delete a product" do
      delete :destroy, params: { id: @product.id }
      expect(response).to redirect_to products_url
    end
  end
