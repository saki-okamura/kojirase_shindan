Rails.application.routes.draw do
  root to: 'static_pages#top'
  get '/help' => 'static_pages#help'
  get '/privacy' => 'static_pages#privacy'
end
