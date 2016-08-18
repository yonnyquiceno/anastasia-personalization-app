class ArticlesController < ApplicationController
before_action :set_items
  def show

  end

  private
  def set_items
    @items = Article.where(category_id:params[:id])
    debugger
  end

end
