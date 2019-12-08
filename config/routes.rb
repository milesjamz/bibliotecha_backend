Rails.application.routes.draw do
  resources :books
  resources :library_books
  resources :libraries, param: :librarian
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
