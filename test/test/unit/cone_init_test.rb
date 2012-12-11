require 'test_helper'

class ConeInitTest < ActiveSupport::TestCase
  test 'assets cache clear on init' do
    assert Dir["#{Rails.application.config.assets[:cache_store][1]}*"].empty?
  end
end