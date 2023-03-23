class WealthForge3::Investment
  def self.create(params)
    WealthForge3::Connection.post "ce6bf0cf-ff79-11eb-8466-00155d0b8b06", params
  end

  def self.get(params)
    WealthForge3::Connection.post "51029a96-124b-11ec-8466-00155d0b8b06", params
  end

  def self.file_upload(params)
    WealthForge3::Connection.post "bcf7264c-2124-11ec-8467-00155d0b8b06", params
  end

  def self.cancel_subscription(params)
    WealthForge3::Connection.post "df3deb53-2512-11ec-8467-00155d0b8b06", params
  end
end
