require 'rails_helper'

describe UsersController, type: :controller do
  user = FactoryBot.create(:user)
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
