module ApplicationHelper
  include ActionView::Helpers::NumberHelper
  
  def display_course_price(num)
    number_to_currency(num.to_f/100)
  end
end
