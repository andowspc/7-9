Rails.application.routes.draw do

  #get '/' => 'homes#show', as: 'start'

  root to: 'homes#show'
  resources :books
  #get '/books' => 'books#index'
  # ,as: 'main'
  #get '/books/:id' => 'books#show'
  # , as: 'shousai'
  #post '/books' => 'books#create'
  # , as: 'toukou'
  #get '/books/:id/edit' => 'books#edit'
  # , as: 'henshu'
  #patch '/books/:id' => 'books#update'
  # , as: 'koushin'
  #delete '/books/:id' => 'books#destroy'
  # , as: 'sakujo'

  
  
end
