Rails.application.routes.draw do
  devise_for :admins
  root :to => "home#index"
  get "home/index"

  namespace :my_favorites do 
    resources :novels
  end
end
