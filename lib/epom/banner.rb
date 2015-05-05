require 'epom/epom_element'

module Epom
  class Banner < EpomElement

		def self.extended_parameters
			{
				:create_banner => {
					:url => '/rest-api/banner/create.do',
					:parameters => [:placementType, :active, :name, :allowNewPlacementsAutoLinking, :autolinkCategories, :weight, :adUnitId, :bannerType, :code, :url, :mobileAdvertisingNetwork, :mobileAdvertisingNetworkParameters, :campaignId, :hash, :timestamp, :username, :width, :height, :flashBannerLink, :imageBannerLink, :thirdTrackingCode, :adUnitWidth, :adUnitHeight],
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
            :parameters => [:placementType, :hash, :timestamp, :username ],
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

        #######################
        #Banner Targeting API
        #######################

        :create_browser_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/create.do',
            :parameters => [:bannerId, :rule, :browser, :relation, :browserVersion, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_channel_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/channel/create.do',
            :parameters => [:bannerId, :channel, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_cookie_value_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/cookie/create.do',
            :parameters => [:bannerId, :cookieName, :cookieValue, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_country_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/country/create.do',
            :parameters => [:bannerId, :countryCode, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_custom_parameter_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/custom/create.do',
            :parameters => [:bannerId, :expression, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_day_of_week_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/dayofweek/create.do',
            :parameters => [:bannerId, :dayOfWeek, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_device_format_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/deviceformat/create.do',
            :parameters => [:bannerId, :deviceFormat, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_device_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/mobilecarrier/create.do',
            :parameters => [:bannerId, :deviceFormat, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_device_vendor_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/devicevendor/create.do',
            :parameters => [:bannerId, :deviceVendor, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_domain_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/domain/create.do',
            :parameters => [:bannerId, :domain, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_ip_range_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/iprange/create.do',
            :parameters => [:bannerId, :ipFrom, :ipTo, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_language_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/language/create.do',
            :parameters => [:bannerId, :languageCode, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_location_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/location/create.do',
            :parameters => [:bannerId, :countryCode, :regionName, :cityName, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_mobile_carrier_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/mobilecarrier/create.do',
            :parameters => [:bannerId, :mobileCarriers, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_os_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/os/create.do',
            :parameters => [:bannerId, :operatingSystem, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_screen_resolution_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/os/create.do',
            :parameters => [:bannerId, :relation, :screenWidth, :screenHeight, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_time_range_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/timerange/create.do',
            :parameters => [:bannerId, :timeFrom, :timeTo, :rule, :hash, :timestamp, :username ],
            :method => :post
        },
        :create_wifi_traffic_target => {
            :url => '/rest-api/banner/BANNER_ID/targeting/wifi/create.do',
            :parameters => [:bannerId, :rule, :hash, :timestamp, :username ],
            :method => :post
        },

        :disable_targeting => {
            :url => '/rest-api/banner/BANNER_ID/targeting/disable.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :post
        },
        :enable_targeting => {
            :url => '/rest-api/banner/BANNER_ID/targeting/enable.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :post
        },

        :get_browsers => {
            :url => '/rest-api/banner/BANNER_ID/targeting/browsers/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_chrome_browsers => {
            :url => '/rest-api/banner/BANNER_ID/targeting/browsers/chrome/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_firefox_browsers => {
            :url => '/rest-api/banner/BANNER_ID/targeting/browsers/firefox/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_ie_browsers => {
            :url => '/rest-api/banner/BANNER_ID/targeting/browsers/ie/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_safari_browsers => {
            :url => '/rest-api/banner/BANNER_ID/targeting/browsers/safari/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },

        :get_country_regions => {
            :url => '/rest-api/banner/BANNER_ID/targeting/country/region/values.do',
            :parameters => [:bannerId, :countryCode, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_device_format_values => {
            :url => '/rest-api/banner/BANNER_ID/targeting/device/format/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_device_values => {
            :url => '/rest-api/banner/BANNER_ID/targeting/device/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_device_vendor_values => {
            :url => '/rest-api/banner/BANNER_ID/targeting/device/vendor/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_languages => {
            :url => '/rest-api/banner/BANNER_ID/targeting/language/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_mobile_carriers => {
            :url => '/rest-api/banner/BANNER_ID/targeting/mobilecarriers/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_os_values => {
            :url => '/rest-api/banner/BANNER_ID/targeting/os/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_os_versions_by_os_name => {
            :url => '/rest-api/banner/BANNER_ID/targeting/os/OS_NAME/versions.do',
            :parameters => [:bannerId, :osName, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_region_cities => {
            :url => '/rest-api/banner/BANNER_ID/targeting/country/region/city/values.do',
            :parameters => [:bannerId, :countryCode, :regionName, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_screen_resolution_values => {
            :url => '/rest-api/banner/BANNER_ID/targeting/resolution/values.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_targeting => {
            :url => '/rest-api/banner/BANNER_ID/targeting/TARGET_ID.do',
            :parameters => [:bannerId, :targetId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_targetings => {
            :url => '/rest-api/banner/BANNER_ID/targetings.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_targeting_types => {
            :url => '/rest-api/banner/BANNER_ID/targeting/types.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },

        :remove_targeting => {
            :url => '/rest-api/banner/BANNER_ID/targeting/TARGET_ID/delete.do',
            :parameters => [:bannerId, :targetId, :hash, :timestamp, :username ],
            :method => :delete
        },

        #############################
        #Banner Placement Linking API
        #############################

        :create_or_update_banner_placements => {
            :url => '/rest-api/banners/BANNER_ID/placements.do',
            :parameters => [:bannerId, :ids, :hash, :timestamp, :username ],
            :method => :put
        },
        :delete_banner_placements => {
            :url => '/rest-api/banners/BANNER_ID/placements.do',
            :parameters => [:bannerId, :removeIds, :hash, :timestamp, :username ],
            :method => :delete
        },
        :get_banner_placements_list => {
            :url => '/rest-api/banners/BANNER_ID/placements.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :disable_banner_country_pricing => {
            :url => '/rest-api/banner/BANNER_ID/pricing/COUNTRY_CODE.do',
            :parameters => [:bannerId, :countryCode, :hash, :timestamp, :username ],
            :method => :delete
        },
        :disable_banner_frequency_capping => {
            :url => '/rest-api/banner/BANNER_ID/capping/frequency.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :delete
        },
        :disable_banner_pricing => {
            :url => '/rest-api/banner/BANNER_ID/pricing.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :delete
        },

        :get_advertising_categories => {
            :url => '/rest-api/categories/advertising.do',
            :parameters => [:hash, :timestamp, :username ],
            :method => :get
        },
        :get_banner => {
            :url => '/rest-api/banner/BANNER_ID.do',
            :parameters => [:bannerId, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_banners => {
            :url => '/rest-api/banners.do',
            :parameters => [:campaignId, :advertisingCategories, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_banners_urls => {
            :url => '/rest-api/banners/urls.do',
            :parameters => [:bannerIds, :advertisingCategories, :hash, :timestamp, :username ],
            :method => :get
        },
        :get_publishing_categories => {
            :url => '/rest-api/categories/publishing.do',
            :parameters => [:hash, :timestamp, :username ],
            :method => :get
        },
        :update_banner => {
            :url => '/rest-api/banner/BANNER_ID/update.do',
            :parameters => [:bannerId, :active, :allowNewPlacementsAutoLinking, :autolinkCategories, :hash, :timestamp, :username ],
            :method => :post
        },
        :update_banner_country_pricing => {
            :url => '/rest-api/banner/{BANNER_ID}/pricing/COUNTRY_CODE.do',
            :parameters => [:bannerId, :active, :allowNewPlacementsAutoLinking, :autolinkCategories, :hash, :timestamp, :username ],
            :method => :post
        },
        :update_banner_country_pricing_batch => {
            :url => '/rest-api/banner/BANNER_ID/pricing/batch',
            :parameters => [:bannerId, :countryPrices, :hash, :timestamp, :username ],
            :method => :post
        },
        :update_banner_frequency_capping => {
            :url => '/rest-api/banner/BANNER_ID/capping/frequency.do',
            :parameters => [:bannerId, :amount, :periodType, :flat, :period, :hash, :timestamp, :username ],
            :method => :post
        },
        :update_banner_pricing => {
            :url => '/rest-api/banner/BANNER_ID/pricing.do',
            :parameters => [:bannerId, :price, :paymentModel, :hash, :timestamp, :username ],
            :method => :post
        }
			}
		end

    def self.replace_string_identifiers(url, params)
      url.gsub!('BANNER_ID', params[:bannerId].to_s) if url.include?("BANNER_ID")
      url.gsub!('BANNER_TYPE', params[:bannerType]) if url.include?('BANNER_TYPE')
      url.gsub!('OS_NAME', params[:osName]) if url.include?('OS_NAME')
      url.gsub!('TARGET_ID', params[:targetId]) if url.include?('TARGET_ID')
      url.gsub!('COUNTRY_CODE', params[:countryCode]) if url.include?('COUNTRY_CODE')
      url
    end

  end
end
