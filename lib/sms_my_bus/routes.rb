module SmsMyBus
  class Routes
    def self.get_routes
      response = Curl::Easy.http_get("http://www.smsmybus.com/api/v1/getroutes?key=#{SmsMyBus.key}")
      JSON.parse(response.body_str)
    end
  end
end
