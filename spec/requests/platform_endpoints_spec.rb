require 'rails_helper'

RSpec.describe "PlatformEndpoints", type: :request do
  describe "GET /platform_endpoints" do
    it "works! (now write some real specs)" do
      get platform_endpoints_path
      expect(response).to have_http_status(200)
    end
  end
end
