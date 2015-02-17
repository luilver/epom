module Epom
  class Advertiser
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json

    #TODO: calculate hash like Epom documentation say and put the username
    def self.delete_advertiser(advertiser_id)
      uri = "/rest-api/advertisers/#{advertiser_id}/delete.do"
      parameters = {:hash => 'md5hash', :timestamp => Time.now, :username => 'pepito_en_kewelta'}
      response = delete(uri, :query => parameters)
      response.sucess?
    end

  end
end
