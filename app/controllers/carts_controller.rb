class CartsController < ApplicationController

  def clean
    current_cart.clean!
    redirect_to :back, alert:"Delete success!"
  end

  def checkout
    @order = Order.new
  end
end
