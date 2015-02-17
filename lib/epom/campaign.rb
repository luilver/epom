module Epom
  class Campaign
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json

    def self.create_campaign(parameters = {})
      uri = '/rest-api/campaign/create.do'
      validation = validate_parameters(parameters, :create_campaign)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Advertiser else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.delete_campaign(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/delete.do"
      validation = validate_parameters(parameters, :delete_campaign)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Advertiser else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_banners_for_campaign(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/delete.do"
      validation = validate_parameters(parameters, :banners_for_campaign)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Advertiser else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end
  end
end