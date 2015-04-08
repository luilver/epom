require 'test_helper'

class EpomTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Epom
  end

  test "get authentication token" do
  	response = Epom.get_authentication_token('supervisor', 'supervisor')
  	assert_instance_of String, response

  	response = Epom.get_authentication_token('manager', 'manager')
  	assert_instance_of String, response

  	response = Epom.get_authentication_token('publisher', 'publisher')
  	assert_instance_of String, response

  	response = Epom.get_authentication_token('advertiser', 'advertiser')
  	assert_instance_of String, response
  end
end
