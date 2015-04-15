require 'httparty'
require 'digest'

module Epom

  def self.create_hash(*args)
  	md5 = Digest::MD5.new
    md5 << args.join
  	md5.hexdigest
  end

end
