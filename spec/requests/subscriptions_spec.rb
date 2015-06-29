require 'rails_helper'

RSpec.describe "Subscriptions", type: :request do

  before(:each) do
    @user = FactoryGirl.build(:user)
    @user.skip_confirmation!
    @user.save!
  end

  describe "GET /subscriptions" do
    it "works! (now write some real specs)" do
      get user_subscriptions_path(@user.id)
      expect(response).to have_http_status(302)
    end
  end
end
