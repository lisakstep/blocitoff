Blocitoff::Application.routes.draw do
  devise_for :users
  get "welcome/index"
  get "welcome/about"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 root to: 'welcome#index'

 resources :lists, only: [:new, :create, :show]
 resources :items, only: [:new, :create, :show, :destroy]

 
end
