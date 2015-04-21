require "rails_helper"

RSpec.describe ApiRequest, type: :model do
  it "orders by created_at" do
    api1 = ApiRequest.create!(url: 'http://www.wego.com.ph/hotels/carebear/exchange-rates.json')
    api2 = ApiRequest.create!(url: 'http://www.wego.com.ph/hotels/carebear/exchange-rates_2.json')

    expect(ApiRequest.order(:created_at)).to eq([api1, api2])
  end
end