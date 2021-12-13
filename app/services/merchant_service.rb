class MerchantService
  class << self
    # def get_data(from_api)
    #   conn = Faraday.new(url: "http://localhost:3000/api/v1/", request: { timeout: 0.1 })
    #   response = conn.get(from_api)
    #   JSON.parse(response.body, symbolize_names: true)
    # end

    def find_all_merchants
      response = conn.get("/merchants")
      parse_data(response)
    end

    private
    def conn
      Faraday.new("http://localhost:3000/api/v1", request: { timeout: 0.1 } )
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end