module SmsMyBus
  class Locations
    def self.get_stops route_id
      response = Curl::Easy.http_get("http://api.smsmybus.com/v1/getstops?key=#{SmsMyBus.key}&routeID=#{route_id}")
      JSON.parse(response.body_str)
    end
  end
end
