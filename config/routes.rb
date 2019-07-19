Rails.application.routes.draw do
  resources :gig_singers
  resources :singer_roles
  resources :parts
  resources :gigs
  resources :singers
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
