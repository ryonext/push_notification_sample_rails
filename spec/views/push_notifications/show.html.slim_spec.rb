require 'rails_helper'

RSpec.describe "push_notifications/show", type: :view do
  before(:each) do
    @push_notification = assign(:push_notification, PushNotification.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
