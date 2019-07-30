Rails.application.routes.draw do
  resources :gig_singers
  resources :singer_parts
  resources :parts
  resources :gigs
  resources :singers
  resources :songs do
    resources :parts
  end
end
