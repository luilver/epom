require 'test_helper'
require 'epom/auth'

class AuthTest < ActiveSupport::TestCase
  ACCOUNTS = [{:username => 'supervisor', :password => 'supervisor'},
              {:username => 'network', :password => 'network'},
              {:username => 'publisher', :password => 'publisher'},
              {:username => 'advertiser', :password => 'advertiser'},]

  test "truth" do
    assert_kind_of Class, Epom::Auth
  end

  test "get authentication token" do
    ACCOUNTS.each do |account|
    	response = Epom::Auth.get_authentication_token(account)
    	assert_instance_of Hash, response
      assert response['success']
      assert_instance_of String, response['authToken']
    end  	
  end

  test "register user" do
    params = {
      :key => '',
      :hash => '',
      :timestamp => '',
      :username => 'advertiser_kewelta',
      :password => 'advertiser_kewelta',
      :email => 'advertiser@kewelta.com',
      :role => 'ADVERTISER',
      :phone => '+22(345)7891012',
      :firstName => 'kewelta',
      :lastName => 'kewelta',
      :websiteUrl => 'wwww.kewelta.com',
      :company => 'kewelta',
      :country => 'Cuba',
      :state => 'La Habana',
      :enable_market_integration => true
    }

    assert true
  end

  

end