require 'epom/epom_element'

module Epom
  class Placement < EpomElement
    
    def self.extended_parameters
      {
          :delete_placement => {
              :url => '/placements/PLACEMENT_ID/delete.do',
              :parameters => [:placementId, :hash, :timestamp, :username ],
              :method => :post
          },
          :get_placement_summary => {
              :url => '/rest-api/placements/summary.do',
              :parameters => [:placementIds, :publishingCategories, :hash, :timestamp, :username ],
              :method => :get
          },
          :update_mobile_placement => {
              :url => '/placements/update/mobile.do',
              :parameters => [:id, :zoneId, :type, :name, :description, :defaultCode, :hash, :timestamp, :username ],
              :method => :post
          },
          :update_non_standard_placement => {
              :url => '/placements/update/non-standard.do',
              :parameters => [:id, :zoneId, :type, :name, :description, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_non_standard_placement => {
              :url => '/placements/update/standard.do',
              :parameters => [:zoneId, :type, :name, :description, :hash, :timestamp, :username ],
              :method => :post
          },
          :update_standard_placement => {
              :url => '/placements/update/non-standard.do',
              :parameters => [:id, :zoneId, :type, :name, :description, :adUnit, :height, :width, :allowVariableBannerSizes, :defaultCode, :rotateInterval, :hash, :timestamp, :username ],
              :method => :post
          },
          :create_standard_placement => {
              :url => '/placements/update/non-standard.do',
              :parameters => [:zoneId, :type, :name, :description, :adUnit, :height, :width, :allowVariableBannerSizes, :defaultCode, :rotateInterval, :hash, :timestamp, :username ],
              :method => :post
          }


      }
    end

    def self.replace_string_identifiers(url, params)
      url.gsub('PLACEMENT_ID', params[:placementId])
    end
  end
end