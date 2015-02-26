module Epom
  require 'epom/epom_element'
  class Site < EpomElement
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
      }
    end

    def replace_string_identifiers(url, params)
      new_url = url
      #new_url = new_url.gsub('BANNER_ID', params[:bannerId])
      #new_url = new_url.gsub('BANNER_TYPE', params[:bannerType])
      #new_url = new_url.gsub('OS_NAME', params[:osName])
      #new_url = new_url.gsub('TARGET_ID', params[:targetId])
      #new_url.gsub('COUNTRY_CODE', params[:countryCode])
    end
  end
end