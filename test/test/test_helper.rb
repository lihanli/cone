ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
require "minitest/reporters"

Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL

  def setup
    Capybara.current_driver = :chrome
    visit '/'
  end

  def get_js(code)
    page.execute_script("return #{code}")
  end

  def teardown
    Capybara.reset_sessions!    # Forget the (simulated) browser state
  end
end
