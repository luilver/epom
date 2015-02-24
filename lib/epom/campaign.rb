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
      }
    end
    #CAMPAIGN_ID


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
      url = url.gsub('BANNER_ID', params[:bannerId])
      url = url.gsub('BANNER_TYPE', params[:bannerType])
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