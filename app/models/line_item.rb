class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
  #need to instead use "strong attributes" in Rails 4.0+ attr_accessible :cart_id, :product_id
end
