require 'rails_helper'
require 'open-uri'

describe ExchangeRate do
  describe 'parse_exchange_rate' do
    before do
      @rates = JSON.load(open("http://www.wego.com.ph/hotels/carebear/exchange-rates.json"))
    end
 
    it 'format currency' do
      expect(@rates['rates'].first[0]).to eq("AED")
    end

  end
end