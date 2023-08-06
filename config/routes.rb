Rails.application.routes.draw do
  devise_for :users
  
  root "trades#index"

  resources :trades, only: [:index, :new, :create] do
    member do
      put 'close'
    end
  end
end
