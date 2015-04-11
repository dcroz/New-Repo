require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'pry'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://magnet-production-1426654625.elasticbeanstalk.com'
