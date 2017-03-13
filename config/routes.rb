Rails.application.routes.draw do
  root to: 'users#index'

  #USERS CONTROLLER ROUTES
  get    '/users/new',      to: 'users#new',       as: 'new_user'
  post   '/users',          to: 'users#create'
  get    '/users/:id',      to: 'users#show',      as: 'user'
  get    '/users/:id/edit', to: 'users#edit',      as: 'edit_user'
  patch  '/users/:id',      to: 'users#update'
  delete '/users/:id',      to: 'users#destory'
  get    '/login',          to: 'sessions#new'
  get    '/logout',         to: 'sessions#destroy'
  post   '/sessions',       to: 'sessions#create'

  #LIBRARY CONTROLLER ROUTES
  get    '/libraries',          to: 'libraries#index'
  get    '/libraries/new',      to: 'libraries#new',   as: 'new_library'
  post   '/libraries',          to: 'libraries#create'
  get    '/libraries/:id',      to: 'libraries#show',  as: 'library'
  get    '/libraries/:id/edit', to: 'libraries#edit',  as: 'edit_library'
  patch  '/libraries/:id',      to: 'libraries#update'
  delete '/libraries/:id',      to: 'libraries#destroy'

  #LIBRARY USERS CONTROLLER ROUTES
  get '/users/:user_id/libraries',     to: 'library_users#index',  as: 'user_libraries'
  post '/libraries/:library_id/users', to: 'library_users#create', as: 'library_users'

end
