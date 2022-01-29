Rails.application.routes.draw do
  resources :conversations
  get 'conversations/index'
  resources :leads
  devise_for :users
  
  root 'leads#index'
end
