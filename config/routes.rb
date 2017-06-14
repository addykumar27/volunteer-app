Rails.application.routes.draw do
   
  devise_for :users
 
  root 'index#index'

  

  get '/about', to: 'index#about'

  get '/causes/:cause', to: 'causes#show', as: 'cause'
  get '/opportunities/', to: 'opportunities#index', as: 'opportunities'
  get  '/opportunities/:id', to: 'opportunities#show', as: 'opportunity'
  get '/users/:user_id', to: 'users#show', as: 'user'
  get '/orgs/', to: 'org#index', as: 'orgs'
  get '/orgs/:id', to: 'org#show', as: 'org'
  post '/opportunities/:id/useropp', to: 'useropp#create', as: 'create_user_opp'
  delete '/users/:id/opportunity/:id', to: 'opp#destroy', as: 'delete_user_opp'

  # route to redirect users to root if they enter invalid URL
  match '*path', to: 'index#index', via: :all
end

