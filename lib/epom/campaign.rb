module Epom
  class Campaign
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json

    #TODO: Campaign_id parameter is need?
    def self.create_campaign(parameters = {})
      uri = '/rest-api/campaign/create.do'
      validation = validate_parameters(parameters, :create_campaign)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
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
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_banners_for_campaign(campaign_id, parameters = {})
      uri = "/campaign/#{campaign_id}/banners.do"
      validation = validate_parameters(parameters, :banners_for_campaign)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_campaign(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/update.do"
      validation = validate_parameters(parameters, :update_campaign)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    ###########################
    # Campaign Capping API
    ###########################

    def self.get_action_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/actionCapping.do"
      validation = validate_parameters(parameters, :action_capping)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_click_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/clickCapping.do"
      validation = validate_parameters(parameters, :click_capping)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_frequency_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/frequencyCapping.do"
      validation = validate_parameters(parameters, :frequency_capping)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.remove_action_capping(campaign_id, parameters = {})
      uri = "rest-api/campaign/#{campaign_id}/actionCapping.do"
      validation = validate_parameters(parameters, :remove_action_capping)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.remove_click_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/clickCapping.do"
      validation = validate_parameters(parameters, :remove_click_capping)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.remove_frequency_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/frequencyCapping.do"
      validation = validate_parameters(parameters, :remove_frequency_capping)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.set_action_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/actionCapping/set.do"
      validation = validate_parameters(parameters, :set_action_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.set_click_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/clickCapping/set.do"
      validation = validate_parameters(parameters, :set_click_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.set_frequency_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/frequencyCapping/set.do"
      validation = validate_parameters(parameters, :set_frequency_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_action_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/actionCapping/update.do"
      validation = validate_parameters(parameters, :update_action_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_click_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/clickCapping/update.do"
      validation = validate_parameters(parameters, :update_click_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_frequency_capping(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/frequencyCapping/update.do"
      validation = validate_parameters(parameters, :update_frequency_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    ###########################
    # Campaign Limits API
    ###########################

    def self.disable_limits(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/limits.do"
      validation = validate_parameters(parameters, :disable_limits)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_limits(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/limits.do"
      validation = validate_parameters(parameters, :disable_limits)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end








  end
end