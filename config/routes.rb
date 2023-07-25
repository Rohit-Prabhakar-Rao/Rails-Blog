Rails.application.routes.draw do
  root "articles#index"
  get '/about', to: 'articles#about'
  get '/contact', to: 'articles#contact'

  resources :articles do
    resources :comments
  end
end
