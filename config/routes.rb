Rails.application.routes.draw do
  devise_for :admins
  root :to => "main#index"
  get "main/index"

  namespace :api do
    namespace :my_favorites do
      resources :novels
    end
    resources :admins do
      member do
        post 'upload_avatar'
      end
      collection do
        get  'return_admin'
      end
    end
  end

  get '*path', to: 'main#index'
end
