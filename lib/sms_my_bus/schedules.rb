module SmsMyBus
  class Schedules
    def self.get_arrivals stop_id
      response = Curl::Easy.http_get("http://www.smsmybus.com/api/v1/getarrivals?key=#{SmsMyBus.key}&stopID=#{stop_id}")
      JSON.parse(response.body_str)
    end
  end
end
