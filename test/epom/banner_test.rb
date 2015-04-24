require 'test_helper'
require 'epom/banner'

class BannerTest < ActiveSupport::TestCase
	test "truth" do
    assert_kind_of Class, Epom::Banner
  end

  test "create_banner" do
  	timestamp = Time.now.to_i * 1000
    params = {
  		:campaignId => , 
  		:hash => Epom.create_hash(Epom.create_hash('kewelta'), timestamp),
  		:timestamp => timestamp, 
  		:username => 'kewelta'}
  	begin
    	response = Epom::Banner.create_banner(params)
      assert_instance_of Hash, response
      assert response['success']
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end

  
end