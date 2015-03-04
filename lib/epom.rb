module Epom
  include HTTParty
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
    url = '/rest-api/auth/token.do'

    response = post(url,:query => {:username => username,:password => password })
    if response.success?
        return response[:authToken]
    else
        raise Exception, 'Error receiving token.'
    end
  end



end
