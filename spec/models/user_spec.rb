require 'rails_helper'

describe User, type: :model do
	it "should no validate users without an email address" do
		user = FactoryBot.create(:user, email: "not_an_email")
		expect(@user).to_not be_valid
	end
end 
