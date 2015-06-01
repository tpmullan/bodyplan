require 'rails_helper'

RSpec.describe ProgramsController, type: :controller do
  
  login_user

  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { name: "example", 
      trending: true, 
      price: 34.43, 
      rating: 3.3, 
      difficulty: 'medium' } 

  }

  let(:invalid_attributes) {
    { }
  }
  
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      program = Program.create(valid_attributes)
      get :show, {:id => program.to_param} 
      expect(response).to have_http_status(:success)
    end
  end

end
