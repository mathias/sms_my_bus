module SmsMyBus
  class Routes
    def self.get_routes
      response = Curl::Easy.http_get("http://api.smsmybus.com/v1/getroutes?key=#{SmsMyBus.key}")
      JSON.parse(response.body_str)
    end
  end
end
