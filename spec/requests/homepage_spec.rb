require 'rails_helper'

RSpec.describe "home page", :type => :request do
  it 'displays exchanges rates' do
    visit "/"
    expect(page).to have_selector("h1.text-center", :text => "Exchange Rates")
  end

  it 'displays exchanges rates currency' do
    visit "/"
    expect(page).to have_selector("td.currency", :text => "AED")
  end
end