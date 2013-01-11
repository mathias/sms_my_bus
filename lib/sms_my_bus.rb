require 'sms_my_bus/version'

require 'sms_my_bus/locations'
require 'sms_my_bus/schedules'
require 'sms_my_bus/routes'

require 'curb'
require 'json'
require 'uri'

module SmsMyBus
  BASE_API_URI = 'http://api.smsmybus.com/v1/'

  def self.key= key
    @key = key
  end

  def self.key
    raise 'No key set; please see README.md' unless @key
    @key
  end

  def self.make_api_request api_method, opts = {}
    response = Curl::Easy.http_get(SmsMyBus.request_uri(api_method, opts))
    JSON.parse(response.body_str)
  end

  def self.request_uri api_method, opts = {}
    opts['key'] = SmsMyBus.key

    "#{BASE_API_URI}#{api_method}?#{URI.encode_www_form(opts)}"
  end
end
