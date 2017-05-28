require 'rails_helper'

RSpec.describe "platform_endpoints/edit", type: :view do
  before(:each) do
    @platform_endpoint = assign(:platform_endpoint, PlatformEndpoint.create!())
  end

  it "renders the edit platform_endpoint form" do
    render

    assert_select "form[action=?][method=?]", platform_endpoint_path(@platform_endpoint), "post" do
    end
  end
end
