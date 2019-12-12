Rails.application.routes.draw do
  resources :posts do
    resources :application_settings
    resources :application_forms
  end

  resources :attachments
  resources :tickets
  devise_for :users

  resources :students do
    resources :selfies
  end

  resources :selfies, only: :index
  resources :groups

  get 'welcome/index'
  get 'welcome/rap'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
