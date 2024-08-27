Rails.application.routes.draw do
  resources :posts
  root "articles#index"
  # get '/article_user', to: 'article/search_user'
  get '/search', to: "articles#search"

  resources :articles  do
    resources :comments
   

  end
end
