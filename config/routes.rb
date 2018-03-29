Rails.application.routes.draw do
  get 'pages/home'
  resources :skills
  resources :portfolios
  resources :blogs
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
