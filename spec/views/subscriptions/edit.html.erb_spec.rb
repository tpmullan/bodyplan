require 'rails_helper'

RSpec.describe "subscriptions/edit", type: :view do
  before(:each) do
    @subscription = assign(:subscription, FactoryGirl.create(:subscription))
  end

  it "renders the edit subscription form" do
    render

    assert_select "form[action=?][method=?]", subscription_path(@subscription), "post" do

      assert_select "input#subscription_user_id[name=?]", "subscription[user_id]"

      assert_select "select#subscription_program_id[name=?]", "subscription[program_id]"
    end
  end
end
