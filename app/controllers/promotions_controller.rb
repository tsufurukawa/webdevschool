class PromotionsController < ApplicationController
  def index
    response = RestClient.get "http://www.webappcamp.ws/api/v0/promotions"
    @promotions = JSON.parse(response)["data"]
  end
end