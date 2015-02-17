module Epom
  class Advertiser
    include HTTParty
    base_uri 'https://n29.epom.com'
    default_params :output => 'json'
    format :json

    #TODO: calculate hash like Epom documentation say and put the username
    def self.delete_advertiser(advertiser_id, hash = '', timestamp = '', username = '')
      uri = "/rest-api/advertisers/#{advertiser_id}/delete.do"
      parameters = {:hash => hash, :timestamp => timestamp, :username => username}
      response = delete(uri, :query => parameters)
      response.sucess?
    end

    def self.get_advertiser_permissions_for_user(hash = '', timestamp = '', username = '')
      uri = '/advertiserShares.do'
      parameters = {:hash => hash, :timestamp => timestamp, :username => username}
      response = get(uri, :query => parameters)
      response.sucess?
    end

    def self.get_campaigns_for_advertiser(advertiser_id, hash = '', timestamp = '', username = '')
      uri = "/advertiser/#{advertiser_id}/campaigns.do"
      parameters = {:hash => hash, :timestamp => timestamp, :username => username}
      response = get(uri, :query => parameters)
      response.sucess?
    end

    def self.update_advertiser(advertiser_id, name, contact_name, contact_email, description, category,  hash = '', timestamp = '', username = '')
      uri = '/rest-api/advertisers/update.do'
      parameters = {
          :hash => hash,
          :timestamp => timestamp,
          :username => username,
          :id => advertiser_id,
          :name => name,
          :contactName => contact_name,
          :contactEmail => contact_email,
          :description => description,
          :categoryId => category
      }
      response = put(uri, :query => parameters)
      response.sucess?
    end

    def self.create_advertiser(name, contact_name, contact_email, description, category,  hash = '', timestamp = '', username = '')
      uri = '/rest-api/advertisers/update.do'
      parameters = {
          :hash => hash,
          :timestamp => timestamp,
          :username => username,
          :name => name,
          :contactName => contact_name,
          :contactEmail => contact_email,
          :description => description,
          :categoryId => category
      }
      response = put(uri, :query => parameters)
      response.sucess?
    end

  end
end
