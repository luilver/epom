require 'epom/epom_element'

module Epom
  class Advertiser < EpomElement

    def self.extended_parameters
      {
          :delete_advertiser => {
              :url => '/rest-api/advertisers/ADVERTISER_ID/delete.do',
              :parameters => [:advertiserId, :hash, :timestamp, :username ],
              :method => :delete
          },
          :get_advertiser_permissions_for_user => {
              :url => '/advertiserShares.do',
              :parameters => [:hash, :timestamp, :username ],
              :method => :get
          },
          :get_campaigns_for_advertiser => {
              :url => '/advertiser/ADVERTISER_ID/campaigns.do',
              :parameters => [:advertiserId, :hash, :timestamp, :username ],
              :method => :get
          },
          :update_advertiser => {
              :url => '/rest-api/advertisers/update.do',
              :parameters => [:id, :name, :contactName, :contactEmail, :description, :categoryId, :hash, :timestamp, :username ],
              :method => :put
          },
          :create_advertiser => {
              :url => '/rest-api/advertisers/update.do',
              :parameters => [:name, :contactName, :contactEmail, :description, :categoryId, :hash, :timestamp, :username ],
              :method => :put
          },

      }
    end

    def self.replace_string_identifiers(url, params)
      url.gsub!('ADVERTISER_ID', params[:advertiserId].to_s) if url.include?('ADVERTISER_ID')
      url
    end

  end
end
