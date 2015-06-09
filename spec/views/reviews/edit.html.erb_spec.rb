require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, FactoryGirl.create(:review))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "select#review_user_id[name=?]", "review[user_id]"

      assert_select "select#review_program_id[name=?]", "review[program_id]"

      assert_select "textarea#review_body[name=?]", "review[body]"

      assert_select "input#review_rating[name=?]", "review[rating]"

      assert_select "input#review_title[name=?]", "review[title]"
    end
  end
end
