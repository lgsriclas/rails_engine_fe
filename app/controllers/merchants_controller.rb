class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.find_all_merchants
  end
end