Rails.application.routes.draw do
  get '/merchants', to: 'merchants#index'
  get '/items', to: 'items#index'
  get '/merchants/new', to: 'merchants#new'
  get '/merchants/:id', to: 'merchants#show'
  get '/merchants/:merchant_id/items', to: 'merchants#item_index'
  get '/merchants/:id/edit', to: 'merchants#edit'

  post '/merchants', to: 'merchants#create'

  delete '/merchants/:id', to: 'merchants#delete'

  patch '/merchants/:id', to: 'merchants#update'
end
