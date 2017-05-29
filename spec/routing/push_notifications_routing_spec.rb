require "rails_helper"

RSpec.describe PushNotificationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/push_notifications").to route_to("push_notifications#index")
    end

    it "routes to #new" do
      expect(:get => "/push_notifications/new").to route_to("push_notifications#new")
    end

    it "routes to #show" do
      expect(:get => "/push_notifications/1").to route_to("push_notifications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/push_notifications/1/edit").to route_to("push_notifications#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/push_notifications").to route_to("push_notifications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/push_notifications/1").to route_to("push_notifications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/push_notifications/1").to route_to("push_notifications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/push_notifications/1").to route_to("push_notifications#destroy", :id => "1")
    end

  end
end
