class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
    current_cart.add_product_to_cart(@product)
    redirect_to :back, notice: "已成功加入购物车！"
  else
    redirect_to :back
    flash[:warning] = "购物车内已有此商品！"
  end
  end

end
