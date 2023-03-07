Rails.application.routes.draw do
  get 'books/new'
  root to: "books#top"
  post 'books' => 'books#create'
  get 'books' => 'books#index',as:'index'
  get 'books/:id' => 'books#show',as:'show'
  get 'books/:id/edit' => 'books#edit',as:'edit'
  patch 'books/:id' => 'books#update',as:'update'
  delete 'books/:id' => 'books#destroy',as:'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
