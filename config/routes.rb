Rails.application.routes.draw do
  root 'homes#index'

  namespace :api do
    resources :quotes, only: [:create] do
      collection do
        get 'exchange'
      end
    end
  end
end
