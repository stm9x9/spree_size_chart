# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)
require "spree_size_chart/version"

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_size_chart'
  s.version     =  SpreeSizeChart::VERSION
  s.summary     = 'SpreeSizeChart is a spree extension helping your store to provide pertinent product information'
  s.description = 'SpreeSizeChart is a spree extension helping your store to provide pertinent product information'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Stephane Bounmy'
  s.email             = 'stephanebounmy@gmail.com'
  s.homepage          = 'https://github.com/sbounmy/spree_size_chart'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'


  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'selenium-webdriver'
end
