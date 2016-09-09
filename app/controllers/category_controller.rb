#:nodoc:
class CategoryController < ApplicationController
  def index
    @categories = Category.all
    flash[:error] = 'No references registered.' if @categories.empty?
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = 'Category registered successfully.'
      redirect_to category_index_path
    else
      flash[:error] = @category.errors.full_messages.join(',')
      render 'new'
    end
  end

  def category_params
    params.require(:category).permit(:category_name, :description,
                                     :image, :dimension)
  end
  private :category_params
end
