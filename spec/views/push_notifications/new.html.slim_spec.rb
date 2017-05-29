require 'rails_helper'

RSpec.describe "push_notifications/new", type: :view do
  before(:each) do
    assign(:push_notification, PushNotification.new())
  end

  it "renders new push_notification form" do
    render

    assert_select "form[action=?][method=?]", push_notifications_path, "post" do
    end
  end
end
