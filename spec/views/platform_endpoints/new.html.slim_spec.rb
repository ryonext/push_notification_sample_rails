require 'rails_helper'

RSpec.describe "platform_endpoints/new", type: :view do
  before(:each) do
    assign(:platform_endpoint, PlatformEndpoint.new())
  end

  it "renders new platform_endpoint form" do
    render

    assert_select "form[action=?][method=?]", platform_endpoints_path, "post" do
    end
  end
end
