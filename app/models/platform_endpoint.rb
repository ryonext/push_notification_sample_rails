class PlatformEndpoint
  include ActiveModel::Model
  attr_accessor :token, :endpoint_arn

  def save
    client = Aws::SNS::Client.new(region: Settings.region)
    result = client.create_platform_endpoint({
      platform_application_arn: Settings.platform_application_arn,
      token: token,
    })
  end

  class << self
    def all
      client = Aws::SNS::Client.new(region: Settings.region)
      res = client.list_endpoints_by_platform_application(
        {
          platform_application_arn: Settings.platform_application_arn
        }
      )
      res.endpoints
    end
  end
end
