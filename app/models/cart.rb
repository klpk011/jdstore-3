class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_item, source: :product

  def add_product_to_cart(product)
    ci = cart_item.build
    ci.product = product
    ci.quantity = 1
    ci.save
  end
end
