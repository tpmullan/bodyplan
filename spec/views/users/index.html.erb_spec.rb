require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    user = FactoryGirl.create(:user)
    user.skip_confirmation!
    user.save!

    assign(:users, [
      user,
      user
    ])
  end

  it "renders a list of users" do
    render
  end
end
