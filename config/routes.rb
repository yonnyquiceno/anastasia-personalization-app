Rails.application.routes.draw do
  root to: 'category#select'
  get '/categories/:category_id', to: 'articles#articles_index', as: 'category_articles'
  get '/categories/:category_id/articles/:article_id', to: 'articles#show', as: 'article_description'

  get '/products/cart/cart_resume', to: 'products#cart_resume', as: 'products_cart_resume'
  get '/products/cart/cart_form', to: 'products#cart_form', as: 'cart_form'
  get '/categories/:category_id/articles/:article_id/users/:user_id/products/:product_id/parts/colour_personalization', to: 'articles#colour_personalization', as: 'article_color_personalization'
  post'/material_parts', to: 'material_parts#create'
  # get '/articles/new', to: 'articles#create', as: 'new_article'
  resources :articles, only: [:index, :new, :create, :update, :destroy]
  resources :category
  resources :manufacturer
  resources :products do
    resources :category
    resources :manufacturer
  end

  get '/users/:user_id/products', to: 'products#user_products_index', as: 'user_products'


end
