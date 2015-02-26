module Epom
  require 'epom/epom_element'
  class Zone < EpomElement
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json

    def self.extended_parameters
      {
          :delete_zone => {
              :url => '/zones/ZONE_ID/delete.do',
              :parameters => [:zoneId, :hash, :timestamp, :username ],
              :method => :post
          },
          :get_zone_placement => {
              :url => '/zones/ZONE_ID/placements.do',
              :parameters => [:zoneId, :hash, :timestamp, :username ],
              :method => :get
          },

      }
    end
    #ZONE_ID

    def replace_string_identifiers(url, params)
      new_url = url
      #new_url = new_url.gsub('ZONE_ID', params[:zoneId])
      #new_url.gsub('PLACEMENT_ID', params[:placementId])
    end
  end
end