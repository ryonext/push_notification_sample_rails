require 'rails_helper'

RSpec.describe "push_notifications/index", type: :view do
  before(:each) do
    assign(:push_notifications, [
      PushNotification.create!(),
      PushNotification.create!()
    ])
  end

  it "renders a list of push_notifications" do
    render
  end
end
