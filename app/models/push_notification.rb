class PushNotification
  include ActiveModel::Model
  attr_accessor :message, :endpoint_arn

  def save
    client = Aws::SNS::Client.new(region: Settings.region)
    client.publish(
      {
        target_arn: endpoint_arn,
        message: message
      }
    )
  end
end
