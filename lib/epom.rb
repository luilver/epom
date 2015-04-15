require 'httparty'
require 'digest'

module Epom

  def self.create_hash(username, password, email, private_key, timestamp)
  	md5 = Digest::MD5.new
    md5 << username+password+email+private_key+timestamp
  	md5.hexdigest
  end

end
