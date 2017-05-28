class PlatformEndpoint
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
