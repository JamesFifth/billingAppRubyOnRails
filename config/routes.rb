Rails.application.routes.draw do
  resources :superbills
  # get 'insurances/check'
  resources :insurances
  get 'insurances/check'
  get 'insurances/compare'
  resources :patients
  resources :providers
  resources :bills
  # devise_for :users
  devise_for :users
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  resources :icdcodes
  resources :cptcodes
  get 'home/index'
  get 'home/welcome'
  # get 'insurances/check'
  root 'home#welcome'
  get 'home/superbill'
  get 'checks/check'
  get 'checks/compare'
  get 'search', to: "home#search"
  get 'bills/superbill'
end
