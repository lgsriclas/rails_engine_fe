require 'rails_helper'

RSpec.describe 'Merchant Facade' do
  it '.find_all_merchants' do
    merchants = MerchantFacade.find_all_merchants

    expect(merchants).to be_a(Hash)
  end
end