Rails.application.routes.draw do
  root 'chillouts#index'
  resources :chillouts
end
