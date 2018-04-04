Rails.application.routes.draw do
  root to: 'pages#home'
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
