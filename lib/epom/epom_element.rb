module Epom
  class EpomElement

    def self.extended_parameters
      { }
    end

    def self.generic_validation(params, api_params)
      byebug
      for key in params.keys
        next if api_params.include?(key)
        return false
      end
      true
    end

    def self.generic_method(method_name, params)
      hash = extended_parameters[method_name]
      url = hash[:url]
      api_params = hash[:parameters]

      url = replace_string_identifiers(url, params)

      valid = generic_validation(params, api_params)
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

    def self.replace_string_identifiers(url, params)
      url
    end

    def self.method_missing(name, *args)
      if self.extended_parameters.keys.include?(name.to_sym)
        self.generic_method(name, args[0])
      else
        super
      end
    end
  end
end