module Epom
  def self.create_hash(password)
    #TODO: Calculate hash like documentation
    return 'HASH_FOR_EPOM'
  end

  class PlacementType
    SITE_PLACEMENT = 'SITE_PLACEMENT'
    MOBILE_SITE_PLACEMENT = 'MOBILE_SITE_PLACEMENT'
  end

  class BannerType
    LOCAL_FILE = 'LOCAL_FILE'
    EXTERNAL_FILE = 'EXTERNAL_FILE'
    CODE = 'CODE'
    MOBILE_ADVERTISING_NETWORK = 'MOBILE_ADVERTISING_NETWORK'
    APPLICATION_ADVERTISING_NETWORK = 'APPLICATION_ADVERTISING_NETWORK'
    LOCAL_VIDEO = 'LOCAL_VIDEO'
    EXTERNAL_VIDEO = 'EXTERNAL_VIDEO'
    URL = 'URL'
    VAST_2_0_TAG_URL = 'VAST_2_0_TAG_URL'
    TEMPLATE = 'TEMPLATE'
    OPENRTB_DSP = 'OPENRTB_DSP'
  end

end
