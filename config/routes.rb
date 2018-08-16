Rails.application.routes.draw do

  resource :users, only: %i(new create)

  root 'pictures#index'
  get 'pictures' => 'pictures#index'

  post 'pictures' => 'pictures#create'
  get 'pictures/new' => 'pictures#new'

  get 'pictures/:id/edit' => 'pictures#edit'
  patch 'pictures/:id' => 'pictures#update'

  get 'pictures/:id' => 'pictures#show'

  delete 'pictures/:id' => 'pictures#destroy'
end
