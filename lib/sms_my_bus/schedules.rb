module SmsMyBus
  class Schedules
    def self.get_arrivals stop_id
      api_method = 'getarrivals'
      args = { 'stopID' => stop_id }

      SmsMyBus.make_api_request(api_method, args)
    end
  end
end
