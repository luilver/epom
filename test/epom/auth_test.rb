require 'test_helper'
require 'epom/auth'

class AuthTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Class, Epom::Auth
  end

  test "get authentication token" do
  	response = Epom::Auth.get_authentication_token(username: 'supervisor', password: 'supervisor')
  	assert_instance_of String, response

  	response = Epom::Auth.get_authentication_token('network', 'network')
  	assert_instance_of String, response

  	response = Epom::Auth.get_authentication_token('publisher', 'publisher')
  	assert_instance_of String, response

  	response = Epom::Auth.get_authentication_token('advertiser', 'advertiser')
  	assert_instance_of String, response
  end
end