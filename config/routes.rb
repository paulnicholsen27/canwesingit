Rails.application.routes.draw do
  resources :gig_singers
  resources :parts
  resources :gigs
  resources :singers
  resources :songs do
    resources :parts do
        resources :singer_parts
    end
  end
end
