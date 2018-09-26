require 'rails_helper'

describe User, type: :model do
	it "should no validate users without an email address" do
		user = FactoryBot.create(:user, email: nil)
		expect(@user).to_not be_valid
	end
end
