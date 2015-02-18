module Epom
  class Banner
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json

    def self.create_banner(parameters = {})
      uri = '/rest-api/banner/create.do'
      validation = validate_parameters(parameters, :create_banner)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.delete_banner(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/delete.do"
      validation = validate_parameters(parameters, :delete_banner)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_ad_unit_values_by_banner_type(banner_type, parameters = {})
      uri = "/rest-api/banners/#{banner_type}/adunit/values.do"
      validation = validate_parameters(parameters, :get_ad_unit_values_by_banner_type)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_banner_ad_unit_values(parameters = {})
      uri = '/rest-api/banner/adunit/values.do'
      validation = validate_parameters(parameters, :get_banner_ad_unit_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_banner_pricing(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/pricing.do"
      validation = validate_parameters(parameters, :get_banner_pricing)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_mobile_networks(parameters = {})
      uri = '/rest-api/banner/mobilenetworks.do'
      validation = validate_parameters(parameters, :get_mobile_networks)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_placements_for_banner(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/placements.do"
      validation = validate_parameters(parameters, :get_placements_for_banner)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_banners_urls_batch(parameters = {})
      uri = '/rest-api/banners/urls.do'
      validation = validate_parameters(parameters, :update_banners_urls_batch)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    #######################
    #Banner Capping API
    #######################

    def self.get_action_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/actionCapping.do"
      validation = validate_parameters(parameters, :get_action_capping)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_click_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/clickCapping.do"
      validation = validate_parameters(parameters, :get_click_capping)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_frequency_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/frequencyCapping.do"
      validation = validate_parameters(parameters, :get_frequency_capping)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.remove_action_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/actionCapping.do"
      validation = validate_parameters(parameters, :remove_action_capping)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.remove_click_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/clickCapping.do"
      validation = validate_parameters(parameters, :remove_click_capping)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.remove_frequency_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/frequencyCapping.do"
      validation = validate_parameters(parameters, :remove_frequency_capping)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.set_action_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/actionCapping/set.do"
      validation = validate_parameters(parameters, :set_action_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.set_click_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/clickCapping/set.do"
      validation = validate_parameters(parameters, :set_click_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.set_frequency_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/frequencyCapping/set.do"
      validation = validate_parameters(parameters, :set_frequency_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_action_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/actionCapping/update.do"
      validation = validate_parameters(parameters, :update_action_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_click_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/clickCapping/update.do"
      validation = validate_parameters(parameters, :update_click_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_frequency_capping(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/frequencyCapping/update.do"
      validation = validate_parameters(parameters, :update_frequency_capping)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end


  end
end