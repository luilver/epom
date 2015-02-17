module Epom
  class Advertiser
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json

    def self.delete_advertiser(advertiser_id, parameters = {})
      uri = "/rest-api/advertisers/#{advertiser_id}/delete.do"
      validation = validate_parameters(parameters, :delete_advertiser)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Advertiser else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_advertiser_permissions_for_user(parameters = {})
      uri = '/advertiserShares.do'
      validation = validate_parameters(parameters, :advertiser_permissions)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Advertiser else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_campaigns_for_advertiser(advertiser_id, parameters = {})
      uri = "/advertiser/#{advertiser_id}/campaigns.do"
      validation = validate_parameters(parameters, :campaigns_for_advertiser)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Advertiser else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_advertiser(advertiser_id, parameters = {})
      uri = '/rest-api/advertisers/update.do'

      parameters[:id] = advertiser_id
      validation = validate_parameters(parameters, :update_advertiser)

      if validation[:correct]
        response = put(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Advertiser else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_advertiser(parameters = {})
      uri = '/rest-api/advertisers/update.do'
      validation = validate_parameters(parameters, :create_advertiser)

      if validation[:correct]
        response = put(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Advertiser else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.validate_parameters(options, method)
      case method
        when :delete_advertiser
        when :advertiser_permissions
        when :campaigns_for_advertiser
        when :update_advertiser
        when :create_advertiser
          #validate in each case and return if valid
          true
        else
          false
      end
    end

  end
end
