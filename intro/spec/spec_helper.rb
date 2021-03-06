# frozen_string_literal: true

require 'bundler'
require 'capybara/dsl'
require 'capybara/rspec'
# require 'capybara/apparition'

Bundler.setup(:default)
Bundler.require

# Which default browser do you want Selenium WebDriver to use?
# :selenium_chrome # Selenium driving Chrome
# :selenium_chrome_headless # Selenium driving Chrome in a headless configuration
# https://github.com/teamcapybara/capybara#selenium


# Capybara.register_driver :apparition do |app|
#   Capybara::Apparition::Driver.new(app, { headless: true })
# end

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://the-internet.herokuapp.com'
Capybara.default_max_wait_time = 10
# Capybara.default_driver = :apparition
# Capybara.javascript_driver = :apparition



# Run using:
# bundle exec rspec spec/features/login.rb --format documentation
# ... Or...

RSpec.configure do |config|
  config.formatter = :documentation
end
