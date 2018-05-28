Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  resources :blogs, only: %i[new show index]
  resources :skills, except: [:show]
  get 'skill/:id/:skill_id', to: 'skills#show', as: 'skill_show'
  resources :portfolios
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  resources :posts
end
