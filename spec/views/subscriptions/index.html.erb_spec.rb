require 'rails_helper'

RSpec.describe "subscriptions/index", type: :view do
  before(:each) do
    assign(:subscriptions, [ FactoryGirl.create(:subscription),
      Subscription.create!(
        :user => nil,
        :program => nil
      )
    ])
  end

  it "renders a list of subscriptions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
