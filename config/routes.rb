Rails.application.routes.draw do
  get '/results' => 'results#index'
  root to: 'static_pages#top'
  get '/help', to: 'static_pages#help'
  get '/privacy', to: 'static_pages#privacy'
  get '/terms', to: 'static_pages#terms'
  get '/tweet', to: 'twitter_analyses#twitter_analysis'
end
