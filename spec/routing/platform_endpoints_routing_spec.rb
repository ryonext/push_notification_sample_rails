require "rails_helper"

RSpec.describe PlatformEndpointsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platform_endpoints").to route_to("platform_endpoints#index")
    end

    it "routes to #new" do
      expect(:get => "/platform_endpoints/new").to route_to("platform_endpoints#new")
    end

    it "routes to #show" do
      expect(:get => "/platform_endpoints/1").to route_to("platform_endpoints#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platform_endpoints/1/edit").to route_to("platform_endpoints#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platform_endpoints").to route_to("platform_endpoints#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/platform_endpoints/1").to route_to("platform_endpoints#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/platform_endpoints/1").to route_to("platform_endpoints#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platform_endpoints/1").to route_to("platform_endpoints#destroy", :id => "1")
    end

  end
end
