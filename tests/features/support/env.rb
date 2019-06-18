require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'rspec'
require 'rubocop' 
require 'selenium-webdriver' 
require 'site_prism'
require 'pry'


World Capybara::DSL
World Capybara::RSpecMatchers


Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
        app,
        browser:chrome, 
        desired_capabilities: Selenium::Webdriver::Remote::Capabilities.chrome(
            'chromeOptions' => {'args' => ['--disable-infobars', '--start-maximized']}
        )    
    ) 
end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 10
    config.app_host = 'http://www.neon.com.br/'
  
end
