require "giphy_api/version"
require "faraday_middleware"

module GiphyApi
  class Client

    def initialize
      @connection = Faraday.new('http://api.giphy.com')
      @api_key ||= { :api_key => 'dc6zaTOxFJmzC' }
    end

    def search(query)
      #[q,limit,offset,rating,fmt]
      @connection.get "/v1/gifs/search?#{get_paras(query)}", @api_key
    end

    def trending
      #[limit,rating,fmt]
      @connection.get '/v1/gifs/trending', @api_key
    end

    def random
      #[tag,rating,fmt]
      @connection.get '/v1/gifs/random', @api_key
    end

    def translate(query)
      #[s,rating,fmt]
      @connection.get "/v1/gifs/translate?#{get_paras(query)}", @api_key 

    end

    private

    def get_paras(paras)

      paras.inject(""){|a,(k,v)| a << "&#{k}=#{v}"}

    end

  end
end
