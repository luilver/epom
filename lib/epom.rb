require 'httparty'
require 'digest'

module Epom

  env_file = File.join(Pathname.new(__FILE__).parent.parent, 'config', 'application.yml')
  YAML.load(File.open(env_file)).each do |key, value|
    ENV[key.to_s] = value.to_s
  end if File.exists?(env_file)

  def self.create_hash(username, password, email, private_key, timestamp)
    Digest::MD5.digest(username+password+email+private_key+timestamp)
  end

end
