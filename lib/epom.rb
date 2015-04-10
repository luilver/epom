require 'httparty'

module Epom

  env_file = File.join(Pathname.new(__FILE__).parent.parent, 'config', 'application.yml')
  YAML.load(File.open(env_file)).each do |key, value|
    ENV[key.to_s] = value.to_s
  end if File.exists?(env_file)

  def self.create_hash(password)
    #TODO: Calculate hash like documentation
    return 'HASH_FOR_EPOM'
  end

  ############################
  #LOGIN REST API
  #
  # Login API allows you to create a login page to your network’s accounts on your own web-site.
  # In order to login via the API, you will need to take the following steps:
  #
  # 1.Get an authentication token which stays valid for 1 minute.
  # 2.Login with the token within 1 minute after obtaining it.
  ############################

  def self.get_authentication_token(username, password)
    url = 'https://n29.epom.com/rest-api/auth/token.do'

    response = post(url, :query => {:username => username,:password => password })
    if response.success? 
      if response.parsed_response['success']
        response.parsed_response['authToken']
      else
        raise Exception, response.parsed_response['error']
      end  
    else
      raise Exception, 'Error in communication with the API.'
    end
  end

  def self.log_in_using_authentication_token(token)
    url = "https://n29.epom.com/rest-api/auth/#{token}/login.do"

    response = post(url,:query => {:username => username,:password => password })
    response.success?
  end

  ############################
  #SIGN UP REST API
  #
  #
  # 1. Log into your Supervisor account.
  # 2. In the Menu section find Rest API Management button and click it.
  # 3. In the Keys Management section you can generate Public Key and Private Key.
  # 4. In the REST Sign Up Integration Guide you will find step-by-step guide for
  #    Sign up integration.
  #
  # User registration in Epom system can be done through its public REST API by means
  # of calling specific URI supported by server with HTTP POST request.
  ############################

  def self.register_user(key, hash, timestamp, parameters = {})
    url = "https://n29.epom.com/rest-api/register-user/#{key}/#{hash}/#{timestamp}.do"
    response = post(url,:query => parameters)
    response.success?
  end

end
