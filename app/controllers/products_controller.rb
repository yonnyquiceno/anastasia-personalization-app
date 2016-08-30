#:nodoc:
class ProductsController < ApplicationController
  before_action :find_product, only: [:edit, :update, :destroy]
  before_action :set_user, only: [:index]
  skip_before_action :verify_authenticity_token

  def index
      #@products = Product.all if current_user.present? && current_user.is_admin
      @products = @user.products
      redirect_to products_cart_resume_path
  end

  def show
  end

  def new
    @product = Product.new
  end

  # def create
  #   @product = Product.new(product_params)
  #   if @product.save
  #     flash[:success] = 'product registered successfully.'
  #     redirect_to products_path
  #   else
  #     flash[:error] = @product.errors.full_messages.join(',')
  #     render 'new'
  #   end
  # end

  def create
      @product = Product.new(product_params)
      @product.save
      render :nothing => true
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
    params.permit(:category_id, :manufacturer_id, :approved, :sended, :price, :article_id, :user_id)
  end
  private :product_params

  def set_user
    @user = User.find(params[:user_id])
  end

  def find_product
    @products = Product.find(params[:id])
  end
end
