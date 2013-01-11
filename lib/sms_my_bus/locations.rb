module SmsMyBus
  class Locations
    def self.get_stops route_id
      api_method = 'getstops'
      args = { 'routeID' => route_id }

      SmsMyBus.make_api_request(api_method, args)
    end
  end
end
