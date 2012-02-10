# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sms_my_bus/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Gauger", "Jaymes Waters"]
  gem.email         = ["matt.gauger@gmail.com", "jaymes@bendyworks.com"]
  gem.description   = %q{A gem to talk to the awesome SMSMyBus API in Madison, WI.}
  gem.homepage      = "http://github.com/bendyworks/sms_my_bus"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "sms_my_bus"
  gem.require_paths = ["lib"]
  gem.version       = SmsMyBus::VERSION

  gem.add_dependency 'curb'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'pry'
end
