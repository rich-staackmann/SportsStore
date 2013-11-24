require 'capybara/rspec'
require 'selenium/webdriver'
require 'rspec/expectations'
require 'capybara/cucumber'

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.google.com'
Capybara.javascript_driver = :selenium

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :args => %w[--disable-web-security --allow-file-access-from-files])
end


