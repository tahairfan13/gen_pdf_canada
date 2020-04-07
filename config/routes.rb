Rails.application.routes.draw do

  resources :marketing_products do
    get 'reject'
    member do
      get :market_pdf
      get :market_pdf_french
    end
  end
  get 'marketing/index'
  resources :products
  devise_for :users
  root 'home#root'

  resources :posts do
    member do
      get :get_pdf
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
