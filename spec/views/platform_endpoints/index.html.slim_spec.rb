require 'rails_helper'

RSpec.describe "platform_endpoints/index", type: :view do
  before(:each) do
    assign(:platform_endpoints, [
      PlatformEndpoint.create!(),
      PlatformEndpoint.create!()
    ])
  end

  it "renders a list of platform_endpoints" do
    render
  end
end
