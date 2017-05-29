require 'rails_helper'

RSpec.describe "PushNotifications", type: :request do
  describe "GET /push_notifications" do
    it "works! (now write some real specs)" do
      get push_notifications_path
      expect(response).to have_http_status(200)
    end
  end
end
