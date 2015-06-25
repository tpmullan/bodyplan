require "rails_helper"

RSpec.describe SubscriptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/users/1/subscriptions").to route_to("subscriptions#index", user_id: "1")
    end

    it "routes to #new" do
      expect(:get => "/users/1/subscriptions/new").to route_to("subscriptions#new", user_id: "1")
    end

    it "routes to #show" do
      expect(:get => "/users/1/subscriptions/1").to route_to("subscriptions#show", :id => "1", user_id: "1")
    end

    it "routes to #edit" do
      expect(:get => "/users/1/subscriptions/1/edit").to route_to("subscriptions#edit", :id => "1", user_id: "1")
    end

    it "routes to #create" do
      expect(:post => "/users/1/subscriptions").to route_to("subscriptions#create", user_id: "1")
    end

    it "routes to #update" do
      expect(:put => "/users/1/subscriptions/1").to route_to("subscriptions#update", :id => "1", user_id: "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/users/1/subscriptions/1").to route_to("subscriptions#destroy", :id => "1", user_id: "1")
    end

  end
end
