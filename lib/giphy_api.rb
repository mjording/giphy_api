require "giphy_api/version"
require "faraday_middleware"

module GiphyApi
  class Client

    def initialize
      @connection = Faraday.new('http://api.giphy.com')
    end

    def trending
      @connection.get '/v1/gifs/trending', { :api_key => 'dc6zaTOxFJmzC' }
    end
  end
end
