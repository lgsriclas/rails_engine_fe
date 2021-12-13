class MerchantFacade
  class << self
    def find_all_merchants
      MerchantService.find_all_merchants
    end
  end
end