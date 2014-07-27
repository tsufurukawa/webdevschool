class PromotionsController < ApplicationController
  def index
    response = RestClient.get "http://onlineschoolapi.apiary-mock.com/api/v0/promotions"
    @promotions = JSON.parse(response)["data"]
  end

  def show
    response = RestClient.get "http://onlineschoolapi.apiary-mock.com/api/v0/promotions"
    promotions = JSON.parse(response)["data"]
    @promotions = promotions.select { |promotion| promotion["id"] == params[:id]}
  end
end