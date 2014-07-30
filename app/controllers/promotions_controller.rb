class PromotionsController < ApplicationController
  def index
    @promotions = JSON.parse(restclient_response)["data"]
  end

  def show
    promotions = JSON.parse(restclient_response)["data"]
    @promotion = promotions.select { |promotion| promotion["id"] == params[:id] }.first
  end

  private

  def restclient_response
    response = RestClient.get "http://onlineschoolapi.apiary-mock.com/api/v0/promotions"
  end
end