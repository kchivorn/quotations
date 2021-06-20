Rails.application.routes.draw do
  root 'homes#index'

  namespace :api do
    resources :quotes, only: [] do
      collection do
        get 'exchange'
      end
    end
  end
end
