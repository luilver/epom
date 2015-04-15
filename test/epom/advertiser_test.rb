require 'test_helper'
require 'epom/advertiser'

class AdvertiserTest < ActiveSupport::TestCase
	test "truth" do
    assert_kind_of Class, Epom::Advertiser
  end

  test "delete_advertiser" do
  	params = {
  		:advertiserId => 123, 
  		:hash => Epom.create_hash(Epom.create_hash('username'), 'password', 'timestamp'),
  		:timestamp => '', 
  		:username => ''}
  	begin
    	response = Epom::Advertiser.delete_advertiser(params)
      assert_instance_of Hash, response
      assert response['success']
      assert_instance_of String, response['authToken']
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end
end