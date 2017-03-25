class CartsController < ApplicationController

  def clean
    current_cart.clean!
    redirect_to :back, alert:"Delete success!"
  end
end
