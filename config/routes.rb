Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  post '/static_pages/create' => 'static_pages#create'
  get '/static_pages/index' => 'static_pages#home'
end
