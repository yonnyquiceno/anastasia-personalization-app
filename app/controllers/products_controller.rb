#:nodoc:
class ProductsController < ApplicationController

  before_action :set_products, only: [:user_products_index, :user_data_registry, :delete_non_personalized_products, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def user_products_index
    build_product_colors_array
  end

  def user_data_registry
    build_product_colors_array
  end

  def initialize_product_colors_array
    @product_colors = Array.new
    delete_non_personalized_products
    @products.each do
      @product_colors << []
    end
  end

  def build_product_colors_array
    initialize_product_colors_array
    @products.each_with_index do |product, index|
      @product_colors[index] << product.material_parts.map(&:material).map(&:color)
    end
    gon.product_colors = @product_colors
  end

  def delete_non_personalized_products
    @products.each do |product|
      product.destroy unless product.material_parts.map(&:material).map(&:color).present?
    end
  end

  def destroy
    product = Product.by_id(params[:id]).by_user(current_user.id).first
    product.destroy
    redirect_to user_products_path
  end

  def index
    @products = Product.all
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
    render nothing: true
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to products_path
    else
      render 'Edit'
    end
  end

  def product_params
    params.permit(:category_id, :manufacturer_id, :approved, :sended, :price, :article_id, :user_id)
  end
  private :product_params

  def set_products
    @products = current_user.products.includes(:material_parts)
  end
end
