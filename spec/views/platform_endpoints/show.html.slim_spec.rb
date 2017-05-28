require 'rails_helper'

RSpec.describe "platform_endpoints/show", type: :view do
  before(:each) do
    @platform_endpoint = assign(:platform_endpoint, PlatformEndpoint.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
