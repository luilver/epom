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
      validation = validate_parameters(parameters, :get_limits)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.reset_limits(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/limits/reset.do"
      validation = validate_parameters(parameters, :reset_limits)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.set_limits(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/limits/set.do"
      validation = validate_parameters(parameters, :set_limits)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_limits(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/limits/update.do"
      validation = validate_parameters(parameters, :update_limits)

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

    def self.create_browser_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/browser/create.do"
      validation = validate_parameters(parameters, :create_browser_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_channel_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/channel/create.do"
      validation = validate_parameters(parameters, :create_channel_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_cookie_value_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/cookie/create.do"
      validation = validate_parameters(parameters, :create_cookie_value_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_country_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/country/create.do"
      validation = validate_parameters(parameters, :create_country_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_custom_parameter_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/custom/create.do"
      validation = validate_parameters(parameters, :create_custom_parameter_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_day_of_week_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/dayofweek/create.do"
      validation = validate_parameters(parameters, :create_day_of_week_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_device_format_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/deviceformat/create.do"
      validation = validate_parameters(parameters, :create_device_format_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_device_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/device/create.do"
      validation = validate_parameters(parameters, :create_device_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_device_vendor_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/devicevendor/create.do"
      validation = validate_parameters(parameters, :create_device_vendor_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_domain_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/domain/create.do"
      validation = validate_parameters(parameters, :create_domain_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_ip_range_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/iprange/create.do"
      validation = validate_parameters(parameters, :create_ip_range_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_language_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/language/create.do"
      validation = validate_parameters(parameters, :create_language_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_location_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/location/create.do"
      validation = validate_parameters(parameters, :create_location_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_mobile_carrier_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/mobilecarrier/create.do"
      validation = validate_parameters(parameters, :create_mobile_carrier_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_os_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/os/create.do"
      validation = validate_parameters(parameters, :create_os_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_screen_resolution_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/resolution/create.do"
      validation = validate_parameters(parameters, :create_screen_resolution_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_time_range_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/timerange/create.do"
      validation = validate_parameters(parameters, :create_time_range_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_wifi_traffic_target(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/wifi/create.do"
      validation = validate_parameters(parameters, :create_wifi_traffic_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.disable_targeting(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/disable.do"
      validation = validate_parameters(parameters, :disable_targeting)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.enable_targeting(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/enable.do"
      validation = validate_parameters(parameters, :enable_targeting)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_browsers(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/browsers/values.do"
      validation = validate_parameters(parameters, :get_browsers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_chrome_browsers(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/browsers/chrome/values.do"
      validation = validate_parameters(parameters, :get_chrome_browsers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_country_regions(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/country/region/values.do"
      validation = validate_parameters(parameters, :get_country_regions)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_device_format_values(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/device/format/values.do"
      validation = validate_parameters(parameters, :get_device_format_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_device_values(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/device/values.do"
      validation = validate_parameters(parameters, :get_device_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_device_vendor_values(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/device/vendor/values.do"
      validation = validate_parameters(parameters, :get_device_vendor_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_firefox_browsers(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/browsers/firefox/values.do"
      validation = validate_parameters(parameters, :get_firefox_browsers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_languages(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/language/values.do"
      validation = validate_parameters(parameters, :get_languages)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_mobile_carriers(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/mobilecarriers/values.do"
      validation = validate_parameters(parameters, :get_mobile_carriers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_os_values(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/os/values.do"
      validation = validate_parameters(parameters, :get_os_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_os_versions_by_os_name(campaign_id, os_name, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/os/#{os_name}/versions.do"
      validation = validate_parameters(parameters, :get_os_versions_by_os_name)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_regions_cities(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/country/region/city/values.do"
      validation = validate_parameters(parameters, :get_regions_cities)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_safari_browsers(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/browsers/safari/values.d"
      validation = validate_parameters(parameters, :get_safari_browsers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_screen_resolution_values(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/resolution/values.do"
      validation = validate_parameters(parameters, :get_screen_resolution_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_targeting(campaign_id, target_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/#{target_id}.do"
      validation = validate_parameters(parameters, :get_targeting)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_targetings(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targetings.do"
      validation = validate_parameters(parameters, :get_targetings)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_targeting_types(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/types.do"
      validation = validate_parameters(parameters, :get_targeting_types)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.remove_targeting(campaign_id, target_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/targeting/#{target_id}/delete.do"
      validation = validate_parameters(parameters, :remove_targeting)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    ###########################
    # Campaign Adjusted CPM API
    ###########################

    def self.add_fixed_cpm_country_pricing(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/adjustedCpm/value.do"
      validation = validate_parameters(parameters, :add_fixed_cpm_country_pricing)

      if validation[:correct]
        response = put(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.adjusted_cpm_country_trigger(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/adjustedCpm/value.do"
      validation = validate_parameters(parameters, :add_fixed_cpm_country_pricing)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.adjusted_cpm_list(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/adjustedCpm/values.do"
      validation = validate_parameters(parameters, :adjusted_cpm_list)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end




    ############################################

    # Validation method
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