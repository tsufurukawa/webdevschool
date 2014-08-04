class PromotionsController < ApplicationController
  def index
    @promotions = WebappcampServices.promotions
  end

  def show
    @promotion = WebappcampServices.promotion(params[:id])
  end
end