Rails.application.routes.draw do
  get '/results' => 'results#index'
  root to: 'static_pages#top'
  get '/help' => 'static_pages#help'
  get '/privacy' => 'static_pages#privacy'
  get '/terms' => 'static_pages#terms'
  get '/tweet', to: 'twitter_analyses#twitter_analysis'
end
