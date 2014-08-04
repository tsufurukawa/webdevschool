module PromotionsHelper
  include ActionView::Helpers::NumberHelper
  
  def display_course_price(num)
    num.zero? ? "FREE" : number_to_currency(num.to_f / 100)
  end

  def display_discount(original_price, current_price)
    percent_discount = "#{calculate_discount(original_price, current_price)}% OFF!!!"
  end

  private

  def calculate_discount(original_price, current_price)
    (100 * (original_price - current_price).to_f / original_price).round(1)
  end
end