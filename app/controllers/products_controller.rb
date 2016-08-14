#:nodoc:
class ProductsController < ApplicationController
  def show
    @products = Product.all
  end

  def index
    @products = Product.all
    flash[:error] = 'No products registered' if @products.empty?
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    if @product.save
      flash[:success] = 'product registered successfully.'
      redirect_to products_path
    else
      flash[:error] = @product.errors.full_messages.join(',')
      render 'new'
    end
  end

  def product_params
    params.require(:product).permit(:manufacturer_id,
                                    :category_id, :approved,
                                    :sended, :price)
  end
  private :product_params
end
