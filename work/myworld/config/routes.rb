Rails.application.routes.draw do
  devise_for :admins
  root :to => "main#index"
  get "main/index"

  namespace :my_favorites do 
    resources :novels
  end
end
