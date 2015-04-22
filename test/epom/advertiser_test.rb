require 'test_helper'
require 'epom/advertiser'

class AdvertiserTest < ActiveSupport::TestCase
	test "truth" do
    assert_kind_of Class, Epom::Advertiser
  end

  test "delete_advertiser" do
  	timestamp = Time.now.to_i
    params = {
  		:advertiserId => 711, 
  		:hash => Epom.create_hash(Epom.create_hash('network'), timestamp),
  		:timestamp => timestamp, 
  		:username => 'network'}
  	begin
    	response = Epom::Advertiser.delete_advertiser(params)
      assert_instance_of Hash, response
      assert response['success']
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end

  test "get_advertiser_permissions_for_user" do
    timestamp = Time.now.to_i
  	params = {
  		:hash => Epom.create_hash(Epom.create_hash('supervisor'), timestamp),
  		:timestamp => timestamp, 
  		:username => 'supervisor'}
  	begin
    	response = Epom::Advertiser.get_advertiser_permissions_for_user(params)
      assert_instance_of Array, response
      if response.count > 0
      	first = response[0]
      	assert_instance_of Hash, first
      	assert_includes first.keys, 'id'
      	assert_includes first.keys, 'name'
      end
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end

  test "get_campaigns_for_advertiser" do
    timestamp = Time.now.to_i
  	params = {
  		:advertiserId => '12', 
  		:hash => Epom.create_hash(Epom.create_hash('supervisor'), timestamp),
  		:timestamp => timestamp, 
  		:username => 'supervisor'}
  	begin
    	response = Epom::Advertiser.get_campaigns_for_advertiser(params)
      assert_instance_of Array, response
      if response.count > 0
      	first = response[0]
      	assert_instance_of Hash, first
      	assert_includes first.keys, 'id'
      	assert_includes first.keys, 'name'
      end
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end

  test "create advertiser" do
    timestamp = Time.now.to_i
    params = {
      :hash => Epom.create_hash(Epom.create_hash('supervisor'), timestamp),
      :timestamp => timestamp, 
      :username => 'supervisor',
      :name => "pachanga #{timestamp}",
      :contactName => "pachanga contactName",
      :contactEmail => "pachanga contactEmail",
      :description => "pachanga description"}
    begin
      response = Epom::Advertiser.create_advertiser(params)
      assert_instance_of Hash, response
      assert response['success']
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end
end