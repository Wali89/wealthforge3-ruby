module WealthForge2
  class Configuration
    attr_accessor :session_id
    attr_accessor :api_url
    attr_accessor :environment
    attr_accessor :version
    attr_accessor :production_url
    attr_accessor :sandbox_url

    def initialize
      @session_id = nil
      @environment = nil
      @api_url = nil
      @production_url = "https://wealthforgeprod01.decisions.com/Primary/restapi/Flow/"
      @sandbox_url = "https://wealthforgedev01.decisions.com/decisions/Primary/restapi/Flow"
    end
  end
end
