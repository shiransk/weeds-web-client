Rails.application.routes.draw do
  get '/weeds', to:'weeds#index'
  get '/weeds/new', to: 'weeds#new'
  get '/weeds/:id', to:'weeds#show'
  post '/weeds', to: 'weeds#create'
  get '/weeds/:id/edit', to: 'weeds#edit'
  delete 'weeds/:id', to:'weeds#destroy'
end
