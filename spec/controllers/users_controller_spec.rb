require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(email:"eemccracken@gmail.com", password: "Testing") }
  let(:user2) { User2.create!(email:"mccrackene6@gmail.com", password: "Testing") }
  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in user
      end
      it 'loads correct user details' do
        get :show, params: { id: user.id }
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end
    end
  end
end
