require 'test_helper'
require 'epom/site'

class SiteTest < ActiveSupport::TestCase
	test "truth" do
    assert_kind_of Class, Epom::Site
  end

  test "get_sites" do
  	timestamp = Time.now.to_i * 1000
    params = {
  		:hash => Epom.create_hash(Epom.create_hash(ENV['epom_username']), timestamp),
  		:timestamp => timestamp, 
  		:username => ENV['epom_password'],
    }
  	begin
    	response = Epom::Site.get_sites(params)
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end

  test "get_site_cpm_threshold_summary" do
    timestamp = Time.now.to_i * 1000
    params = {
      :hash => Epom.create_hash(Epom.create_hash(ENV['epom_username']), timestamp),
      :timestamp => timestamp, 
      :username => ENV['epom_password'],
      :siteId => 721
    }
    begin
      response = Epom::Site.get_site_cpm_threshold_summary(params)
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end

  test "get_site_pricing" do
    timestamp = Time.now.to_i * 1000
    params = {
      :hash => Epom.create_hash(Epom.create_hash(ENV['epom_username']), timestamp),
      :timestamp => timestamp, 
      :username => ENV['epom_password'],
      :siteId => 721
    }
    begin
      response = Epom::Site.get_site_pricing(params)
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end

end