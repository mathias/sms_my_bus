module SmsMyBus
  class Locations
    def self.get_stops route_id
      response = Curl::Easy.http_get("http://www.smsmybus.com/api/v1/getstops?key=#{KEY}&routeID=#{route_id}")
      JSON.parse(response.body_str)
    end
  end
end