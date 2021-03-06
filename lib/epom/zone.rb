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
          :update_zone => {
              :url => '/zones/update.do',
              :parameters => [:zoneId, :siteId, :description, :name, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_zone => {
              :url => '/zones/update.do',
              :parameters => [:siteId, :description, :name, :hash, :timestamp, :username ],
              :method => :post
          }
      }
    end

    def replace_string_identifiers(url, params)
       url.gsub('ZONE_ID', params[:zoneId])
    end
  end
end