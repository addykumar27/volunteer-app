Rails.application.routes.draw do
   
  devise_for :users
 
  root 'index#index'

  resources :favorite_opportunities, only: [:create, :destroy]


  get '/about', to: 'index#about'

  get '/causes/:cause', to: 'causes#show', as: 'cause'
  get '/opportunities/', to: 'opportunities#index', as: 'opportunities'
  get '/opportunities/new', to: 'opportunities#new' , as:'newopp'
  get  '/opportunities/:id', to: 'opportunities#show', as: 'opportunity'
  get '/users/:user_id', to: 'users#show', as: 'user'
  get '/organizations/', to: 'organizations#index', as: 'orgs'
  get '/organizations/new', to: 'organizations#new' , as: 'neworg'
  get '/organizations/:id', to: 'organizations#show', as: 'org'
  post '/opportunities/:id/useropp', to: 'useropp#create', as: 'create_user_opp'
  post '/opportunities', to: 'opportunities#create'
  post '/organizations', to: 'organizations#create'
  delete '/opportunities/:id', to: 'opportunities#destroy', as: 'destroy_opp'
  delete '/organizations/:id', to: 'organizations#destroy', as: 'destroy_org'
 

  # route to redirect users to root if they enter invalid URL
  match '*path', to: 'index#index', via: :all
end

