#:nodoc:
class ProductsController < ApplicationController
  before_action :find_product, only: [:edit, :update, :destroy]

  def index
      @products = Product.all
      flash[:error] = 'No products registered' if @products.empty?
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = 'product registered successfully.'
      redirect_to products_path
    else
      flash[:error] = @product.errors.full_messages.join(',')
      render 'new'
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
        redirect_to products_path
    else
      render "Edit"
    end
  end

  def destroy
  end

  def product_params
    params.require(:product).permit(:category_id)
  end
  private :product_params

  def find_product
    @products = Product.find(params[:id]) 
  end
end
