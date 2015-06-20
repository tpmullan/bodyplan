require 'rails_helper'

RSpec.describe "subscriptions/new", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.new)
  end

  it "renders new subscription form" do
    render

    assert_select "form[action=?][method=?]", subscriptions_path, "post" do

      assert_select "input#subscription_user_id[name=?]", "subscription[user_id]"

      assert_select "select#subscription_program_id[name=?]", "subscription[program_id]"
    end
  end
end
