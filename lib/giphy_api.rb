require "giphy_api/version"
require "faraday_middleware"

module GiphyApi
  class Client

    def initialize
      @connection = Faraday.new('http://api.giphy.com')
    end

    def search(query)
      #[q,limit,offset,rating,fmt]
      query_string = query.inject(""){|a,item| a << "&#{item[0]}=#{item[1]}"}
      @connection.get "/v1/gifs/search?#{query_string}", { :api_key => 'dc6zaTOxFJmzC' }
    end

    def trending
      @connection.get '/v1/gifs/trending', { :api_key => 'dc6zaTOxFJmzC' }
    end

    def random
      @connection.get '/v1/gifs/random', { :api_key => 'dc6zaTOxFJmzC' }
    end

  end
end
