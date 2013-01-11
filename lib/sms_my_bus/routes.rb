module SmsMyBus
  class Routes
    def self.get_routes
      api_method = 'getroutes'

      SmsMyBus.make_api_request api_method
    end
  end
end
