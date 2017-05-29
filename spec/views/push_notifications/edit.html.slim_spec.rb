require 'rails_helper'

RSpec.describe "push_notifications/edit", type: :view do
  before(:each) do
    @push_notification = assign(:push_notification, PushNotification.create!())
  end

  it "renders the edit push_notification form" do
    render

    assert_select "form[action=?][method=?]", push_notification_path(@push_notification), "post" do
    end
  end
end
