ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
require 'turn'
require 'selenium-webdriver'

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
  def setup
    Capybara.current_driver = Capybara.javascript_driver
    visit '/'
  end

  def get_js(code)
    page.execute_script("return #{code}")
  end

  def teardown
    Capybara.reset_sessions!    # Forget the (simulated) browser state
  end
end