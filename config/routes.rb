Rails.application.routes.draw do
  resources :products do
    post :buy
    collection do
      get :search
    end
  end
  resources :orders, only: %i[index]
  devise_for :users
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
