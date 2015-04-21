class HomeController < ApplicationController
  def index
    @exchange_rates = ExchangeRate.new.parse_exchange_rate
  end
end