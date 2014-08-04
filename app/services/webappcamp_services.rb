class WebappcampServices
  def self.promotions
    response = RestClient.get(ENV['PROMOTION_ENDPOINT'])
    JSON.parse(response)["data"]
  end

  def self.promotion(id)
    response = RestClient.get(ENV['PROMOTION_ENDPOINT'] + "/#{id}")
    JSON.parse(response)["data"]
  end
end