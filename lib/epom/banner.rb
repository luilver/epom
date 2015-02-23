module Epom
  class Banner
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json


		def self.extended_parameters
			{
				:create_banner => {
					:url => '/rest-api/banner/create.do',
					:parameters => [:placementType, :active, :allowNewPlacementsAutoLinking, :autolinkCategories, :weight, :adUnitId, :bannerType, :code, :url, :mobileAdvertisingNetwork, :mobileAdvertisingNetworkParameters, :campaignId, :hash, :timestamp, :username ],
					:method => :post
				},
        :delete_banner => {
            :url => '/rest-api/banner/BANNER_ID/delete.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :delete
        },
        :get_ad_unit_values_by_banner_type => {
            :url => '/rest-api/banners/BANNER_TYPE/adunit/values.do',
            :parameters => [:bannerType, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_banner_ad_unit_values => {
            :url => '/rest-api/banner/adunit/values.do',
            :parameters => [:bannerType, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_banner_pricing => {
            :url => '/rest-api/banner/BANNER_ID/pricing.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_mobile_networks => {
            :url => '/rest-api/banner/mobilenetworks.do',
            :parameters => [:hash, :timestamp, :username ],
            :method => :get
        },
        :get_placements_for_banner => {
            :url => '/rest-api/banner/BANNER_ID/placements.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :update_banners_urls_batch => {
            :url => '/rest-api/banner/BANNER_ID/placements.do',
            :parameters => [:hash, :timestamp, :username ],
            :method => :post
        },

        #######################
        #Banner Capping API
        #######################

        :get_action_capping => {
            :url => '/rest-api/banner/BANNER_ID/actionCapping.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_click_capping => {
            :url => '/rest-api/banner/BANNER_ID/clickCapping.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_frequency_capping => {
            :url => '/rest-api/banner/BANNER_ID/frequencyCapping.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },

        :remove_action_capping => {
            :url => '/rest-api/banner/BANNER_ID/actionCapping.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :delete
        },
        :remove_click_capping => {
            :url => '/rest-api/banner/BANNER_ID/clickCapping.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :delete
        },
        :remove_frequency_capping => {
            :url => '/rest-api/banner/BANNER_ID/frequencyCapping.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :delete
        },

        :set_action_capping => {
            :url => '/rest-api/banner/BANNER_ID/actionCapping/set.do',
            :parameters => [:bannerId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
            :method => :post
        },
        :set_click_capping => {
            :url => '/rest-api/banner/BANNER_ID/clickCapping/set.do',
            :parameters => [:bannerId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
            :method => :post
        },
        :set_frequency_capping => {
            :url => '/rest-api/banner/BANNER_ID/frequencyCapping/set.do',
            :parameters => [:bannerId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
            :method => :post
        },

        :update_action_capping => {
            :url => '/rest-api/banner/BANNER_ID/actionCapping/update.do',
            :parameters => [:bannerId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
            :method => :post
        },
        :update_click_capping => {
            :url => '/rest-api/banner/BANNER_ID/clickCapping/update.do',
            :parameters => [:bannerId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
            :method => :post
        },
        :update_frequency_capping => {
            :url => '/rest-api/banner/BANNER_ID/frequencyCapping/update.do',
            :parameters => [:bannerId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
            :method => :post
        },

        #######################
        #Banner Limits API
        #######################

        :disable_limits => {
            :url => '/rest-api/banner/BANNER_ID/limits.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :delete
        },
        :get_limits => {
            :url => '/rest-api/banner/BANNER_ID/limits.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :reset_limits => {
            :url => '/rest-api/banner/BANNER_ID/limits/reset.do',
            :parameters => [:bannerId, :limitCounters, :hash, :timestamp, :username ],
            :method => :post
        },
        :set_limits => {
            :url => '/rest-api/banner/BANNER_ID/limits/set.do',
            :parameters => [:bannerId, :totalImpressionsLimit, :totalClicksLimit, :totalBudgetLimit, :dailyImpressionsLimit, :dailyClicksLimit, :dailyBudgetLimit, :totalImpressions, :totalClicks, :totalBudget, :dailyImpressions, :dailyClicks, :startDate, :endDate, :totalImpressionsLimit, :totalClicksLimit, :totalBudgetLimit, :dailyImpressionsLimit, :dailyClicksLimit, :dailyBudgetLimit, :totalImpressions, :totalClicks, :totalBudget, :dailyImpressions, :dailyClicks, :dailyBudget, :hash, :timestamp, :username ],
            :method => :post
        },
        :update_limits => {
            :url => '/rest-api/banner/BANNER_ID/limits/update.do',
            :parameters => [:bannerId, :totalImpressionsLimit, :totalClicksLimit, :totalBudgetLimit, :dailyImpressionsLimit, :dailyClicksLimit, :dailyBudgetLimit, :totalImpressions, :totalClicks, :totalBudget, :dailyImpressions, :dailyClicks, :startDate, :endDate, :totalImpressionsLimit, :totalClicksLimit, :totalBudgetLimit, :dailyImpressionsLimit, :dailyClicksLimit, :dailyBudgetLimit, :totalImpressions, :totalClicks, :totalBudget, :dailyImpressions, :dailyClicks, :dailyBudget, :hash, :timestamp, :username ],
            :method => :post
        },
			}
		end
    #BANNER_ID

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

    def generic_validation(params, actual_params)
      for key in params.keys
        next if actual_params.keys.include?(key)
        return false
      end
      true
    end

    def generic_method(method_name, params)
      hash = extended_parameters[method_name]
      url = hash[:url]
      actual_params = hash[:parameters]
      url = url.gsub('BANNER_ID', params[:bannerId])
      url = url.gsub('BANNER_TYPE', params[:bannerType])
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
      if self.extended_parameters.keys.include?(name.to_sym)
        generic_method(name, args)
      else
        super
      end
    end

  end
end
