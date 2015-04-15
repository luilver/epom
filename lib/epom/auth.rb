require 'epom/epom_element'

module Epom
  class Auth < EpomElement

    def self.extended_parameters
      {
          :get_authentication_token => {
              :url => '/rest-api/auth/token.do',
              :parameters => [:username, :password],
              :method => :post
          },
          :register_user => {
              :url => '/rest-api/register-user/KEY/HASH/TIMESTAMP.do',
              :parameters => [:key, :hash, :timestamp, :username, :password, :email, :role, :phone, :firstName, :lastName, :websiteUrl, :company, :country, :state, :enable_market_integration],
              :method => :post
          }
      }
    end

    def self.replace_string_identifiers(url, params)
      url.gsub!('TOKEN', params[:token]) if url.include?('TOKEN')
      url.gsub!('KEY', params[:key]) if url.include?('KEY')
      url.gsub!('HASH', params[:hash]) if url.include?('HASH')
      url.gsub!('TIMESTAMP', params[:timestamp]) if url.include?('TIMESTAMP')
      url
    end

  end
end