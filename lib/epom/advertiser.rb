module Epom
  class Advertiser
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json

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
      url = url.gsub('ADVERTISER_ID', params[:advertiserId])

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
