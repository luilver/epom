module Epom
  require 'epom/epom_element'
  class Site < EpomElement
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json

    def self.extended_parameters
      {
          :delete_site => {
              :url => '/sites/SITE_ID/delete.do',
              :parameters => [:siteId, :hash, :timestamp, :username ],
              :method => :post
          },
          :delete_site_cpm_threshold => {
              :url => '/sites/SITE_ID/cpm-thresholds/delete.do',
              :parameters => [:siteId, :hash, :timestamp, :username ],
              :method => :post
          },
          :get_site_cpm_threshold_summary => {
              :url => '/sites/SITE_ID/cpm-thresholds.do',
              :parameters => [:siteId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_site_pricing => {
              :url => '/sites/SITE_ID/pricing.do',
              :parameters => [:siteId, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_sites => {
              :url => '/rest-api/sites.do',
              :parameters => [:publishingCategories, :hash, :timestamp, :username ],
              :method => :get
          },
          :get_sites_zones => {
              :url => '/sites/SITE_ID/zones.do',
              :parameters => [:siteId, :hash, :timestamp, :username ],
              :method => :get
          },
          :set_site_cpm_thresholds => {
              :url => '/sites/SITE_ID/cpm-thresholds.do',
              :parameters => [:siteId, :cpmThreshold, :siteCountryCPMThresholds, :hash, :timestamp, :username ],
              :method => :post
          },
          :set_site_pricing => {
              :url => '/sites/SITE_ID/pricing.do',
              :parameters => [:siteId, :paymentModel, :hash, :timestamp, :username ],
              :method => :post
          },
          :set_placement_pricing => {
              :url => '/rest-api/placements/PLACEMENT_ID/pricing.do',
              :parameters => [:placementId, :paymentModel, :hash, :timestamp, :username ],
              :method => :post
          },
          :update_site => {
              :url => '/sites/update.do',
              :parameters => [:createDefaultZone, :name, :url, :description, :email, :allowPlacementBannersLinkingChange, :revenueShare, :impressionsByMonth, :visitorsByMonth, :hash, :timestamp, :username ],
              :method => :post
          },
      }
    end

    def replace_string_identifiers(url, params)
      new_url = url
      new_url = new_url.gsub('SITE_ID', params[:siteId])
      new_url.gsub('PLACEMENT_ID', params[:placementId])
    end
  end
end