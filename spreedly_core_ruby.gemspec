$LOAD_PATH.unshift 'lib'
require "spreedly_core_ruby/version"

Gem::Specification.new do |s|
  s.name              = "spreedly_core_ruby"
  s.version           = SpreedlyCore::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Ruby interface for Spreedly Core"
  s.homepage          = "http://github.com/larspind/spreedly_core_ruby"
  s.email             = "support@spreedly.com"
  s.authors           = [ "Spreedly", "403 Labs" ]
  s.description       = "Spreedly Core is a cloud service that allows you to store credit cards and run transactions against them, enabling you to accept payments on your website while avoiding all liability and PCI compliance requirements."

  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("man/**/*")
  s.files            += Dir.glob("test/**/*")

  s.add_runtime_dependency     'httparty' ;# Calivn 2012-09-25: Let's try without this:, '0.7.7'
  s.add_runtime_dependency     'builder'

  s.add_development_dependency "ruby-debug#{RUBY_VERSION =~ /1.9.\d/ ? "19" : ""}"
  s.add_development_dependency 'rake', '0.8.7'
  s.add_development_dependency 'webmock', '~> 1.6.2'
end
