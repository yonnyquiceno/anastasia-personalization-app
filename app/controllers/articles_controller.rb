class ArticlesController < ApplicationController
  before_action :set_items
  before_action :set_item, only: [:colour_personalization]
  before_action :set_product, only: [:colour_personalization]

  def articles_index
  end

  def index
    @articles = Article.all
    flash[:error] = 'No articles registered.' if @articles.empty?
  end

  def show
    @item = @items.find(params[:article_id])
    if user_signed_in? == false
      random_email = rand(36**30).to_s(36)
      @user = User.new(:email => random_email + '@non_registered_user.com', :password => 'password', :password_confirmation => 'password')
      @user.save
      sign_in @user
    end
    @product ||= Product.create(category_id: @item.category_id, article_id: @item.id, approved: false, sended: false)
  end



  def colour_personalization
    @product.update(user: current_user)
    gon.item = @item
    @image1 = @item.image1
    @parts_count = @item.parts_count
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
  def set_product
    @product = Product.find(params[:product_id])
  end

  def article_params
    params.require(:article).permit(:article_name, :description,
                                    :image1, :image2, :image3, :dimension)
  end
end
