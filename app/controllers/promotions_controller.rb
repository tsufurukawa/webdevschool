class PromotionsController < ApplicationController
  def index
    @promotions = WebappcampServices.parse_json
  end

  def show
    promotions = WebappcampServices.parse_json
    @promotion = promotions.select { |promotion| promotion["id"] == params[:id] }.first
  end
end