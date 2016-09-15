Rails.application.routes.draw do
  devise_for :users
  root to: 'category#select'
  get '/categories/:category_id', to: 'articles#articles_index', as: 'category_articles'
  get '/categories/:category_id/articles/:article_id', to: 'articles#show', as: 'article_description'
  get '/users/:user_id/products', to: 'products#user_products_index', as: 'user_products'
  get '/users/:user_id/products/user_data_registry', to: 'products#user_data_registry', as: 'user_data_registry'
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
  resources :users do
    resources :products
  end


end
