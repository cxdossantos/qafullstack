require 'capybara'
require 'capybara/rspec'
require 'selenium/webdriver'
#require 'chromedriver-helper'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  config.before(:example) do
      page.current_window.resize_to(1440, 900)
  end

  config.after(:example) do |e|
    nome =  e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
    if(e.exception)
      page.save_screenshot('log/failed_' + nome + '.png')
    else
      page.save_screenshot('log/sucess_' + nome + '.png')
    end
    #page.save_screenshot('log/' + nome + '.png') if e.exception
  end

end

Capybara.configure do |config|
  #config.default_driver = :selenium_chrome
  config.default_driver = :selenium
  config.default_max_wait_time = 5
  config.app_host = "https://training-wheels-protocol.herokuapp.com"
end 