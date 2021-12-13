require 'rails_helper'

RSpec.describe 'Merchant Facade' do
  it 'can find all merchants' do
    merchants = MerchantService.find_all_merchants

    expect(merchants).to be_a(Hash)
    expect(merchants[:results]).to be_an(Array)

    first_merchant = response[:results][0]

    expect(first_merchant).to have_key(:name)
    expect(first_merchant[:name]).to be_a(String)
  end
end