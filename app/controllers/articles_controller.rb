#:nodoc:
class ArticlesController < ApplicationController
  before_action :set_items
  before_action :set_item, only: [:colour_personalization]

  def articles_index
  end

  def index
    @articles = Article.all
    flash[:error] = 'No articles registered.' if @articles.empty?
  end

  def show
    @item = @items.find(params[:article_id])
  end

  def colour_personalization
    @vector = @item.image1
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = 'article registered successfully.'
      #redirect_to products_path
    else
      flash[:error] = @article.errors.full_messages.join(',')
      #render 'new'
    end
  end

  private

  def set_items
    @items = Article.where(category_id: params[:category_id])
  end
  def set_item
    @item = Article.find(params[:article_id])
  end

  def article_params
    params.require(:article).permit(:article_name, :description,
                                    :image1, :image2, :image3, :dimension)
  end
end
