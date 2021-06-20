Rails.application.routes.draw do
  namespace :api do
    resources :quotes, only: [] do
      collection do
        get 'exchange'
      end
    end
  end
end
