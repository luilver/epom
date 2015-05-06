require 'test_helper'
require 'epom/advertiser'

class AdvertiserTest < ActiveSupport::TestCase
	test "truth" do
    assert_kind_of Class, Epom::Advertiser
  end

  test "delete_advertiser" do
    advertiser_id = test_create_advertiser()

  	timestamp = Time.now.to_i * 1000
    params = {
  		:advertiserId => advertiser_id, 
  		:hash => Epom.create_hash(Epom.create_hash(ENV['password']), timestamp),
  		:timestamp => timestamp, 
  		:username => ENV['username']}

  	response = Epom::Advertiser.delete_advertiser(params)
    assert_instance_of Hash, response
    assert response['success']
  end

  test "get_advertiser_permissions_for_user" do
    timestamp = Time.now.to_i * 1000
  	params = {
  		:hash => Epom.create_hash(Epom.create_hash(ENV['password']), timestamp),
  		:timestamp => timestamp, 
  		:username => ENV['username']}

  	response = Epom::Advertiser.get_advertiser_permissions_for_user(params)
    assert_instance_of Array, response
    if response.count > 0
    	first = response[0]
    	assert_instance_of Hash, first
      assert_instance_of Fixnum, first['id']
      assert_instance_of String, first['name']
      assert_instance_of String, first['shareType']
    end
  end

  test "get_campaigns_for_advertiser" do
    timestamp = Time.now.to_i * 1000
  	params = {
  		:advertiserId => ENV['advertiser_id'], 
  		:hash => Epom.create_hash(Epom.create_hash(ENV['password']), timestamp),
  		:timestamp => timestamp, 
  		:username => ENV['username']}

  	response = Epom::Advertiser.get_campaigns_for_advertiser(params)
    assert_instance_of Array, response
    if response.count > 0
    	first = response[0]
    	assert_instance_of Hash, first
    	assert_instance_of Fixnum, first['id']
      assert_instance_of String, first['name']
    end
  end

  test "create advertiser" do
    timestamp = Time.now.to_i * 1000
    params = {
      :hash => Epom.create_hash(Epom.create_hash(ENV['password']), timestamp),
      :timestamp => timestamp, 
      :username => ENV['username'],
      :name => "advertiser #{timestamp}",
      :contactName => "advertiser contactName",
      :contactEmail => "advertiser@gmail.com",
      :description => "advertiser description"}

    response = Epom::Advertiser.create_advertiser(params)
    assert_instance_of Hash, response
    assert response['success']
    assert_instance_of Fixnum, response['id']
    response['id']
  end
end