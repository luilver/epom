require 'test_helper'
require 'epom/site'

class SiteTest < ActiveSupport::TestCase
	# test "truth" do
 #    assert_kind_of Class, Epom::Site
 #  end

 #  test "get_sites" do
 #  	timestamp = Time.now.to_i * 1000
 #    params = {
 #  		:hash => Epom.create_hash(Epom.create_hash(ENV['epom_password']), timestamp),
 #  		:timestamp => timestamp, 
 #  		:username => ENV['epom_username'],
 #    }
 #  	begin
 #    	response = Epom::Site.get_sites(params)
 #      assert_instance_of Array, response
 #      if response.count > 0
 #        first = response.first
 #        assert_instance_of Hash, first
 #        assert_instance_of Fixnum, first['id']
 #        assert_instance_of String, first['name']
 #      end
 #    rescue SocketError => e
 #      assert_equal "getaddrinfo: Name or service not known", e.message
 #    end 
 #  end

 #  test "get_site_cpm_threshold_summary" do
 #    timestamp = Time.now.to_i * 1000
 #    params = {
 #      :hash => Epom.create_hash(Epom.create_hash(ENV['epom_password']), timestamp),
 #      :timestamp => timestamp, 
 #      :username => ENV['epom_username'],
 #      :siteId => 721
 #    }
 #    begin
 #      response = Epom::Site.get_site_cpm_threshold_summary(params)
 #      assert_instance_of Array, response
 #      if response.count > 0
 #        first = response.first
 #        assert_instance_of Hash, first
 #        assert_instance_of Float, first['cpmThreshold']
 #      end
 #    rescue SocketError => e
 #      assert_equal "getaddrinfo: Name or service not known", e.message
 #    end 
 #  end

 #  test "get_site_pricing" do
 #    timestamp = Time.now.to_i * 1000
 #    params = {
 #      :hash => Epom.create_hash(Epom.create_hash(ENV['epom_password']), timestamp),
 #      :timestamp => timestamp, 
 #      :username => ENV['epom_username'],
 #      :siteId => 721
 #    }
 #    begin
 #      response = Epom::Site.get_site_pricing(params)
 #      assert_instance_of Hash, response
 #      assert_instance_of String, response['paymentModel']
 #      assert_instance_of Float, response['price']
 #      assert_instance_of String, response['pricingType']
 #    rescue SocketError => e
 #      assert_equal "getaddrinfo: Name or service not known", e.message
 #    end 
 #  end

  # test "set_site_pricing" do
  #   timestamp = Time.now.to_i * 1000
  #   params = {
  #     :hash => Epom.create_hash(Epom.create_hash(ENV['epom_password']), timestamp),
  #     :timestamp => timestamp, 
  #     :username => ENV['epom_username'],
  #     :siteId => 721,
  #     :paymentModel => '{"paymentModel":"FIXED_PRICE","pricingType":"CPM","price":1.0,"countryPricing":[{"US":2.0},{"UK":2.0},{"UA":2.0}]}',
  #   }
  #   begin
  #     response = Epom::Site.set_site_pricing(params)
  #   rescue SocketError => e
  #     assert_equal "getaddrinfo: Name or service not known", e.message
  #   end 
  # end

  # test "set_placement_pricing" do
  #   timestamp = Time.now.to_i * 1000
  #   params = {
  #     :hash => Epom.create_hash(Epom.create_hash(ENV['epom_password']), timestamp),
  #     :timestamp => timestamp, 
  #     :username => ENV['epom_username'],
  #     :placementId => 1384,
  #     :paymentModel => ''
  #   }
  #   begin
  #     response = Epom::Site.set_placement_pricing(params)
  #   rescue SocketError => e
  #     assert_equal "getaddrinfo: Name or service not known", e.message
  #   end 
  # end

  test "create_site" do
    timestamp = Time.now.to_i * 1000
    params = {
      :hash => Epom.create_hash(Epom.create_hash(ENV['epom_password']), timestamp),
      :timestamp => timestamp, 
      :username => ENV['epom_username'],
      :name => "publisher_#{timestamp}",
      :url => 'http://www.publisher.com',
      :email => "publisher@example.com"
    }
    begin
      response = Epom::Site.create_site(params)
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end

end
