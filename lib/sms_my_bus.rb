require 'sms_my_bus/version'

require 'sms_my_bus/locations'
require 'sms_my_bus/schedules'
require 'sms_my_bus/routes'

require 'curb'
require 'json'


module SmsMyBus

  def self.key= key
    @key = key
  end

  def self.key
    raise 'No key set; please see README.md' unless @key
    @key
  end

end
