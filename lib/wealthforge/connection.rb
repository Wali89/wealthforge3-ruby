require "openssl"
require "faraday"
require "json"
require "csv"
require "timeout"
require "resolv-replace"
require "jwt"

class WealthForge3::Connection
  def self.post(endpoint, params)
    begin
      response = connection.post do |req|
        req.url endpoint
        req.headers["Content-Type"] = "application/json"
        req.body = params.to_json
      end
    rescue => e
      raise WealthForge3::ApiException.new(e)
    end
    JSON.parse(response.body)
  end

  def self.get(endpoint, params)
    begin
      response = connection.get do |req|
        req.url endpoint
        req.headers["Content-Type"] = "application/json"
        req.body = params.to_json
      end
    rescue => e
      raise WealthForge3::ApiException.new(e)
    end
    JSON.parse(response.body)
  end

  def self.connection
    Faraday.new(url: WealthForge3.configuration.api_url) do |faraday|
      faraday.request :url_encoded
      faraday.options.timeout = 15
      faraday.options.open_timeout = 15
      faraday.use CustomErrors
      faraday.adapter Faraday.default_adapter
    end
  end
end

class CustomErrors < Faraday::Response::RaiseError
  def on_complete(env)
    case env[:status]
    when 400...600
      JSON.parse(env[:body])
    else
      super
    end
  end
end
