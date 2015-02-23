module Epom
  class Banner
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json


		def extended_parameters
			{
				:create_banner => {
					:url => "/rest-api/banner/create.do",
					:parameters => [:param1, :param2, :param3, :param4],
					:method => :post,
				},
				:get_frequency_capping => {
					:url => "/rest-api/banner/BANNER_ID/frequencyCapping.do"
					:parameters => [:param1, :param2, :param3, :param4],
					:method => :get,
				},
			}
		end

		def generic_validation(params, actual_params)
			for key in params.keys
				next if actual_params.keys.include?(key)
				return false
			end
			return true
		end

		def generic_method(method_name, params)
		  hash = extended_parameters[method_name]
			url = hash[:url]
			actual_params = hash[:parameters]
			url = url.gsub('BANNER_ID', params[:banner_id])
			url = url.gsub('BANNER_TYPE', params[:banner_type])
			valid = generic_validation(params, actual_params)
			method = hash[:method]
      if valid
        response = send(method, url, :query => params) # revisar esto aqui
        if response.success?
					return response.body # revisar bien esto aqui tambien
				else
					# ver aqui que se hace
				end
      else
        raise ArgumentError, validation[:raison]
      end
		end

		def self.method_missing(name, *args)
			if extended_method.keys.include?(name.to_sym)
				generic_method(name, args)
			else
				super
			end
		end

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

    #######################
    #Banner Limits API
    #######################

    def self.disable_limits(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/limits.do"
      validation = validate_parameters(parameters, :disable_limits)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_limits(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/limits.do"
      validation = validate_parameters(parameters, :get_limits)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.reset_limits(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/limits/reset.do"
      validation = validate_parameters(parameters, :reset_limits)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.set_limits(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/limits/set.do"
      validation = validate_parameters(parameters, :set_limits)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_limits(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/limits/update.do"
      validation = validate_parameters(parameters, :update_limits)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    #######################
    #Banner Targeting API
    #######################

    def self.create_browser_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/create.do"
      validation = validate_parameters(parameters, :create_browser_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_channel_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/channel/create.do"
      validation = validate_parameters(parameters, :create_channel_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_cookie_value_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/cookie/create.do"
      validation = validate_parameters(parameters, :create_cookie_value_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_country_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/country/create.do"
      validation = validate_parameters(parameters, :create_country_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_custom_parameter_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/custom/create.do"
      validation = validate_parameters(parameters, :create_custom_parameter_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_day_of_week_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/dayofweek/create.do"
      validation = validate_parameters(parameters, :create_day_of_week_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_device_format_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/deviceformat/create.do"
      validation = validate_parameters(parameters, :create_device_format_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_device_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/mobilecarrier/create.do"
      validation = validate_parameters(parameters, :create_device_format_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_device_vendor_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/devicevendor/create.do"
      validation = validate_parameters(parameters, :create_device_vendor_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_domain_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/domain/create.do"
      validation = validate_parameters(parameters, :create_domain_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_ip_range_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/iprange/create.do"
      validation = validate_parameters(parameters, :create_ip_range_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_language_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/language/create.do"
      validation = validate_parameters(parameters, :create_language_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_location_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/location/create.do"
      validation = validate_parameters(parameters, :create_location_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_mobile_carrier_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/mobilecarrier/create.do"
      validation = validate_parameters(parameters, :create_mobile_carrier_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_os_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/os/create.do"
      validation = validate_parameters(parameters, :create_os_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_screen_resolution_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/resolution/create.do"
      validation = validate_parameters(parameters, :create_screen_resolution_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_time_range_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/timerange/create.do"
      validation = validate_parameters(parameters, :create_time_range_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.create_wifi_traffic_target(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/wifi/create.do"
      validation = validate_parameters(parameters, :create_wifi_traffic_target)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.disable_targeting(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/disable.do"
      validation = validate_parameters(parameters, :disable_targeting)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.enable_targeting(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/enable.do"
      validation = validate_parameters(parameters, :enable_targeting)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_browsers(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/browsers/values.do"
      validation = validate_parameters(parameters, :get_browsers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_chrome_browsers(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/browsers/chrome/values.do"
      validation = validate_parameters(parameters, :get_chrome_browsers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_country_regions(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/country/region/values.do"
      validation = validate_parameters(parameters, :get_country_regions)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_device_format_values(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/device/format/values.do"
      validation = validate_parameters(parameters, :get_device_format_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_device_values(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/device/values.do"
      validation = validate_parameters(parameters, :get_device_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_device_vendor_values(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/device/vendor/values.do"
      validation = validate_parameters(parameters, :get_device_vendor_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_firefox_browsers(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/browsers/firefox/values.do"
      validation = validate_parameters(parameters, :get_firefox_browsers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_ie_browsers(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/browsers/ie/values.do"
      validation = validate_parameters(parameters, :get_ie_browsers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_languages(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/language/values.do"
      validation = validate_parameters(parameters, :get_languages)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_mobile_carriers(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/mobilecarriers/values.do"
      validation = validate_parameters(parameters, :get_mobile_carriers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_os_values(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/os/values.do"
      validation = validate_parameters(parameters, :get_os_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_os_versions_by_os_name(banner_id, os_name, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/os/#{os_name}/versions.do"
      validation = validate_parameters(parameters, :get_os_versions_by_os_name)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_region_cities(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/country/region/city/values.do"
      validation = validate_parameters(parameters, :get_region_cities)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_safari_browsers(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/browsers/safari/values.do"
      validation = validate_parameters(parameters, :get_safari_browsers)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_screen_resolution_values(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/resolution/values.do"
      validation = validate_parameters(parameters, :get_screen_resolution_values)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_targeting(banner_id, target_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/#{target_id}.do"
      validation = validate_parameters(parameters, :get_targeting)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_targetings(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targetings.do"
      validation = validate_parameters(parameters, :get_targetings)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_targeting_types(banner_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/types.do"
      validation = validate_parameters(parameters, :get_targeting_types)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.remove_targeting(banner_id, target_id, parameters = {})
      uri = "/rest-api/banner/#{banner_id}/targeting/#{target_id}/delete.do"
      validation = validate_parameters(parameters, :remove_targeting)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Banner else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end


  end
end
