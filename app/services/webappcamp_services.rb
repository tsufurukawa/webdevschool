class WebappcampServices
  def self.parse_json
    JSON.parse(restclient_response)["data"]
  end

  private

  def self.restclient_response
    response = RestClient.get ENV['PROMOTION_ENDPOINT']
  end
end