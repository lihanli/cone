require 'test_helper'

class ConeBootTest < ActiveSupport::TestCase
  test 'assets cache clear on init' do
    assert Dir["#{::Rails.application.config.instance_eval { @assets }[:cache_store][1]}*"].empty?
  end
end