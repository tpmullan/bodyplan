require 'rails_helper'

RSpec.describe "users/show", type: :view do

  before(:each) do
    user = FactoryGirl.build(:user)
    user.skip_confirmation!
    user.save!
    @user = assign(:user, user)
  end

  it "renders attributes in <p>" do
    render
  end
end
