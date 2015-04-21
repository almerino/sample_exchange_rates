require 'rubygems'
require 'api_cache'

class ExchangeRate
  BASE_URL = 'http://www.wego.com.ph/hotels/carebear/exchange-rates.json'
  #CACHE_POLICY = lambda { 1.hours.ago }

  def initialize()
    #@results = []
  end

  def parse_exchange_rate
    #ApiRequest.cache(BASE_URL, ExchangeRate::CACHE_POLICY) do
      JSON.parse(APICache.get(BASE_URL, { fail: "Error", cache: 3600 }))['rates']
    #end
  end

end