class WealthForge2::Offering
  def self.create(params)
    WealthForge2::Connection.post "fe47bb35-feb3-11eb-8466-00155d0b8b06", params
  end

  def self.get(params)
    WealthForge2::Connection.post "1c3d79e5-1fb8-11ec-8467-00155d0b8b06", params
  end
end
