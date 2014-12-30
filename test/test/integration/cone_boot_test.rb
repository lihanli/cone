require 'test_helper'

class ConeBootTest < ActionDispatch::IntegrationTest
  test 'assets cache clear on init' do
    binding.pry; raise
    assert Dir["#{::Rails.application.config.instance_eval { @assets }[:cache_store][1]}*"].empty?
  end
end