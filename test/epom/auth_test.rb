require 'test_helper'
require 'epom/auth'

class AuthTest < ActiveSupport::TestCase
  ACCOUNTS = [{:username => 'supervisor', :password => 'supervisor'},
              {:username => 'network', :password => 'network'},
              {:username => 'publisher', :password => 'publisher'},
              {:username => 'advertiser', :password => 'advertiser'},
              {:username => 'kewelta', :password => 'kewelta'}]

  test "truth" do
    assert_kind_of Class, Epom::Auth
  end

  test "get authentication token" do
    ACCOUNTS.each do |account|
      begin
    	  response = Epom::Auth.get_authentication_token(account)
        assert_instance_of Hash, response
        assert response['success']
        assert_instance_of String, response['authToken']
      rescue SocketError => e
        assert_equal "getaddrinfo: Name or service not known", e.message
      end 
    	
    end  	
  end

  test "register user" do
    timestamp = Time.now.to_i
    params = {
      :key => ENV['public_key'],
      :hash => Epom.create_hash("advertiser_kewelta_#{timestamp}", 'advertiser_kewelta', "advertiser_#{timestamp}@kewelta.com", ENV['private_key'], timestamp),
      :timestamp => timestamp,
      :username => "advertiser_kewelta_#{timestamp}",
      :password => 'advertiser_kewelta',
      :email => "advertiser_#{timestamp}@kewelta.com",
      :role => 'ADVERTISER',
      :phone => '+22(345)7891012',
      :firstName => 'kewelta',
      :lastName => 'kewelta',
      :websiteUrl => 'http://www.qwe.com',
      :company => 'kewelta',
      :country => 'CU',
      :state => 'La Habana',
      :enable_market_integration => true
    }

    begin
      response = Epom::Auth.register_user(params)
      assert_instance_of Hash, response
      assert response['success']
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 

  end

  

end