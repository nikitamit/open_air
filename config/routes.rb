Openair::Application.routes.draw do
  root to: 'home#show'
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :timesheets, only: :index
    end
  end
end
