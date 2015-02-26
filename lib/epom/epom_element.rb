module Epom
  class EpomElement
    def self.extended_parameters
      { }
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

      url = replace_string_identifiers(url)

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

    def replace_string_identifiers(url)
      url
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