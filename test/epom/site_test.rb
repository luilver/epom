require 'test_helper'
require 'epom/site'

class SiteTest < ActiveSupport::TestCase
	test "truth" do
    assert_kind_of Class, Epom::Site
  end

  test "get_sites" do
  	timestamp = Time.now.to_i * 1000
    params = {
  		:hash => Epom.create_hash(Epom.create_hash('kewelta'), timestamp),
  		:timestamp => timestamp, 
  		:username => 'kewelta',
    }
  	begin
    	response = Epom::Site.get_sites(params)
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end

end