#:nodoc:
class ProductsController < ApplicationController
  def show
    @products = Product.all
  end

  def index
    @products = Product.all
    flash[:error] = 'No products registered' if @products.empty?
  end
end
