require 'test_helper'
require 'epom/campaign'

class CampaignTest < ActiveSupport::TestCase
	test "truth" do
    assert_kind_of Class, Epom::Campaign
  end

  test "create_campaign" do
  	timestamp = Time.now.to_i * 1000
    params = {
  		:advertiserId => 680, 
  		:hash => Epom.create_hash(Epom.create_hash('kewelta'), timestamp),
  		:timestamp => timestamp, 
  		:username => 'kewelta',
      :name => "campaign #{timestamp}",
      :description => "description for campaign #{timestamp}",
      :active => true}
  	begin
    	response = Epom::Campaign.create_campaign(params)
      assert_instance_of Hash, response
      assert response['success']
    rescue SocketError => e
      assert_equal "getaddrinfo: Name or service not known", e.message
    end 
  end

  
end