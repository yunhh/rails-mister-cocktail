Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  post '/cocktails', to: 'cocktails#create'
  get '/cocktails/new', to: 'cocktails#new'
  get '/cocktails/:id', to: 'cocktails#show'
  patch '/cocktails/:id', to: 'cocktails#update'
  delete '/cocktails/:id', to: 'cocktails#destroy'
  get '/cocktails/:id/edit', to: 'cocktails#edit'

  post '/cocktails/:cocktail_id/doses', to: 'doses#create'
  get '/cocktails/:cocktail_id/doses/new', to: 'doses#new'
  delete '/doses/:id', to: 'doses#destroy'
end
