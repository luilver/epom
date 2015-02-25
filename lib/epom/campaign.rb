module Epom
  class Campaign
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json

    def self.extended_parameters
      {
          :create_campaign => {
              :url => '/rest-api/campaign/create.do',
              :parameters => [:name, :advertiserId, :description, :active, :ctrOptimization, :weight, :allowNewPlacementsAutolinking, :autolinkCategories, :hash, :timestamp, :username ],
              :method => :post
          },
          :delete_campaign => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/delete.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :post
          },
          :get_banners_for_campaign => {
              :url => '/campaign/CAMPAIGN_ID/banners.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :update_campaign => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/update.do',
              :parameters => [:campaignId, :name, :advertiserId, :description, :active, :ctrOptimization, :weight, :allowNewPlacementsAutolinking, :autolinkCategories, :hash, :timestamp, :username ],
              :method => :post
          },

          ###########################
          # Campaign Capping API
          ###########################

          :get_action_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/actionCapping.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_click_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/clickCapping.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_frequency_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/frequencyCapping.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },

          :remove_action_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/actionCapping.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :delete
          },
          :remove_click_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/clickCapping.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :delete
          },
          :remove_frequency_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/frequencyCapping.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :delete
          },

          :set_action_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/actionCapping/set.do',
              :parameters => [:campaignId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
              :method => :post
          },
          :set_click_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/clickCapping/set.do',
              :parameters => [:campaignId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
              :method => :post
          },
          :set_frequency_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/frequencyCapping/set.do',
              :parameters => [:campaignId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
              :method => :post
          },

          :update_action_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/frequencyCapping/update.do',
              :parameters => [:campaignId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
              :method => :post
          },
          :update_click_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/clickCapping/update.do',
              :parameters => [:campaignId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
              :method => :post
          },
          :update_frequency_capping => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/frequencyCapping/update.do',
              :parameters => [:campaignId, :amount, :period, :periodType, :evenDistribution, :hash, :timestamp, :username ],
              :method => :post
          },

          ###########################
          # Campaign Limits API
          ###########################

          :disable_limits => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/limits.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :delete
          },
          :get_limits => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/limits.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :reset_limits => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/limits/reset.do',
              :parameters => [:campaignId, :limitCounters, :limitCounters, :hash, :timestamp, :username ],
              :method => :delete
          },
          :set_limits => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/limits/set.do',
              :parameters => [:campaignId, :totalImpressionsLimit, :totalClicksLimit, :totalBudgetLimit, :dailyImpressionsLimit, :dailyClicksLimit, :dailyBudgetLimit, :totalImpressions, :totalClicks, :totalBudget, :dailyImpressions, :dailyClicks, :dailyBudget, :startDate, :endDate, :totalImpressionsLimit, :totalClicksLimit, :totalBudgetLimit, :dailyImpressionsLimit, :dailyClicksLimit, :dailyBudgetLimit, :totalImpressions, :totalClicks, :totalBudget, :dailyImpressions, :dailyClicks, :dailyBudget, :hash, :timestamp, :username ],
              :method => :post
          },
          :update_limits => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/limits/update.do',
              :parameters => [:campaignId, :totalImpressionsLimit, :totalClicksLimit, :totalBudgetLimit, :dailyImpressionsLimit, :dailyClicksLimit, :dailyBudgetLimit, :totalImpressions, :totalClicks, :totalBudget, :dailyImpressions, :dailyClicks, :dailyBudget, :startDate, :endDate, :totalImpressionsLimit, :totalClicksLimit, :totalBudgetLimit, :dailyImpressionsLimit, :dailyClicksLimit, :dailyBudgetLimit, :totalImpressions, :totalClicks, :totalBudget, :dailyImpressions, :dailyClicks, :dailyBudget, :hash, :timestamp, :username ],
              :method => :post
          },


          ###########################
          # Campaign Targeting API
          ###########################

          :create_browser_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/browser/create.do',
              :parameters => [:campaignId, :browser, :relation, :browserVersion, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_channel_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/channel/create.do',
              :parameters => [:campaignId, :channel, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_cookie_value_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/cookie/create.do',
              :parameters => [:campaignId, :cookieName, :cookieValue, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_country_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/country/create.do',
              :parameters => [:campaignId, :countryCode, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_custom_parameter_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/custom/create.do',
              :parameters => [:campaignId, :expression, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_day_of_week_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/dayofweek/create.do',
              :parameters => [:campaignId, :dayOfWeek, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_device_format_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/deviceformat/create.do',
              :parameters => [:campaignId, :deviceFormat, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_device_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/device/create.do',
              :parameters => [:campaignId, :device, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_device_vendor_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/devicevendor/create.do',
              :parameters => [:campaignId, :deviceVendor, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_domain_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/domain/create.do',
              :parameters => [:campaignId, :domain, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_ip_range_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/iprange/create.do',
              :parameters => [:campaignId, :ipFrom, :ipTo, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_language_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/language/create.do',
              :parameters => [:campaignId, :languageCode, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_location_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/location/create.do',
              :parameters => [:campaignId, :countryCode, :regionName, :cityName, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_mobile_carrier_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/mobilecarrier/create.do',
              :parameters => [:campaignId, :mobileCarriers, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_os_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/os/create.do',
              :parameters => [:campaignId, :operatingSystem, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_screen_resolution_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/resolution/create.do',
              :parameters => [:campaignId, :relation, :screenWidth, :screenHeight, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_time_range_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/timerange/create.do',
              :parameters => [:campaignId, :timeFrom, :timeTo, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_wifi_traffic_target => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/wifi/create.do',
              :parameters => [:campaignId, :rule, :hash, :timestamp, :username ],
              :method => :post
          },
          :disable_targeting => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/disable.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :post
          },
          :enable_targeting => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/enable.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :post
          },

          :get_browsers => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/browsers/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_chrome_browsers => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/browsers/chrome/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_firefox_browsers => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/browsers/firefox/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_ie_browsers => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/browsers/ie/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_safari_browsers => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/browsers/safari/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },

          :get_country_regions => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/country/region/values.do',
              :parameters => [:campaignId, :countryCode, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_device_format_values => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/device/format/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_device_values => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/device/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_device_vendor_values => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/device/vendor/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_languages => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/language/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_mobile_carriers => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/mobilecarriers/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_os_values => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/os/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_os_versions_by_os_name => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/os/OS_NAME/versions.do',
              :parameters => [:campaignId, :osName, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_regions_cities => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/country/region/city/values.do',
              :parameters => [:campaignId, :countryCode, :regionName, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_screen_resolution_values => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/resolution/values.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_targeting => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/TARGET_ID.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_targetings => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targetings.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_targeting_types => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/types.do',
              :parameters => [:campaignId, :hash, :timestamp, :username ],
              :method => :get
          },
          :remove_targeting => {
              :url => '/rest-api/campaign/CAMPAIGN_ID/targeting/TARGET_ID/delete.do',
              :parameters => [:campaignId, :targetId, :hash, :timestamp, :username ],
              :method => :get
          },
      }
    end
    #CAMPAIGN_ID  OS_NAME TARGET_ID

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

    ###########################
    # Campaign Action Management API
    ###########################

    def self.create_action(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/action/create.do"
      validation = validate_parameters(parameters, :create_action)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_action(campaign_id, action_key, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/action/#{action_key}.do"
      validation = validate_parameters(parameters, :get_action)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_actions(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/actions.do"
      validation = validate_parameters(parameters, :get_actions)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.remove_action(campaign_id, action_key, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/action/#{action_key}/delete.do"
      validation = validate_parameters(parameters, :remove_action)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_action(campaign_id, action_key, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/action/#{action_key}/update.do"
      validation = validate_parameters(parameters, :update_action)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.disable_campaign_country_pricing(campaign_id, country_code, parameters = {})
      uri = "/rest-api/campaigns/#{campaign_id}/pricing/#{country_code}.do"
      validation = validate_parameters(parameters, :disable_campaign_country_pricing)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.disable_campaign_pricing(campaign_id, parameters = {})
      uri = "/rest-api/campaigns/#{campaign_id}/pricing.do"
      validation = validate_parameters(parameters, :disable_campaign_pricing)

      if validation[:correct]
        response = delete(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_campaign(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}.do"
      validation = validate_parameters(parameters, :get_campaign)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_campaign_pricing(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/pricing.do"
      validation = validate_parameters(parameters, :get_campaign_pricing)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.get_campaigns(parameters = {})
      uri = '/rest-api/campaigns.do'
      validation = validate_parameters(parameters, :get_campaigns)

      if validation[:correct]
        response = get(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_campaign_country_pricing(campaign_id, country_code, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/pricing/#{country_code}.do"
      validation = validate_parameters(parameters, :update_campaign_country_pricing)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_campaign_country_pricing_batch(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/pricing/batch.do"
      validation = validate_parameters(parameters, :update_campaign_country_pricing_batch)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
      else
        raise ArgumentError, validation[:raison]
      end
    end

    def self.update_campaign_pricing(campaign_id, parameters = {})
      uri = "/rest-api/campaign/#{campaign_id}/pricing.do"
      validation = validate_parameters(parameters, :update_campaign_pricing)

      if validation[:correct]
        response = post(uri, :query => parameters)
        response.success?
        #if response.success? then return class of type Campaign else raise Error
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
      url = url.gsub('CAMPAIGN_ID', params[:campaignId])
      url = url.gsub('OS_NAME', params[:osName])
      url = url.gsub('TARGET_ID', params[:targetId])
      url = url.gsub('COUNTRY_CODE', params[:countryCode])
      valid = generic_validation(params, actual_params)
      method = hash[:method]
      if valid
        response = send(method, url, :query => params) # revisar esto aqui
        if response.success?
          return response # revisar bien esto aqui tambien
        else
          # ver aqui que se hace
        end
      else
        raise ArgumentError, 'Error'
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