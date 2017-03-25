class CartItem < ApplicationRecord

  belongs_to :cart
  belongs_to :product


  def clean!
    cart_items.destroy_all
  end
end
