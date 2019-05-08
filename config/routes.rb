Rails.application.routes.draw do
  resources :gigs
  resources :singers
  resources :voice_parts
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
