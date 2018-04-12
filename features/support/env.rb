require 'rspec'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'httparty'

Capybara.configure do |c|
	c.default_driver = :selenium
	c.app_host = 'http://localhost/www/sistemaCadLog'
end

Capybara.default_max_wait_time = 10