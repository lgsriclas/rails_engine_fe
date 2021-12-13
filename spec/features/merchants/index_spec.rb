require 'rails_helper'

RSpec.describe 'merchant index page' do
  let!(:merchants) { MerchantFacade.find_all_merchants}

  it 'lists all merchants by name' do
    visit merchants_path

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Johnson-Dickinson")
  end
end