Rails.application.routes.draw do
  get '/results' => 'results#show'

  root to: 'static_pages#top'
  get '/help', to: 'static_pages#help'
  get '/privacy', to: 'static_pages#privacy'
  get '/terms', to: 'static_pages#terms'

  get '*path', to: 'application#render_404'
end
