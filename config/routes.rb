Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  get '/merchants', to: 'merchants#index'
  get '/items', to: 'items#index'
  get '/merchants/:merchant_id/items', to: 'merchants#item_index'

  get '/merchants/new', to: 'merchants#new'
  get '/merchants/:merchant_id/items/new', to: 'items#new'

  get '/merchants/:id', to: 'merchants#show'
  get '/items/:id', to: 'items#show'

  get 'items/:id/edit', to: 'items#edit'
  get '/merchants/:id/edit', to: 'merchants#edit'

  post '/merchants', to: 'merchants#create'
  post '/merchants/:merchant_id/items', to:'items#create'

  patch '/merchants/:id', to: 'merchants#update'
  patch '/items/:id', to: 'items#update'

  delete '/merchants/:id', to: 'merchants#delete'
  delete '/items/:id', to: 'items#delete'
end
