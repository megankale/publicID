Rails.application.routes.draw do
  resources :venues
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/home' =>'venues#index'
end
