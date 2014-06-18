SortArray::Application.routes.draw do
  get "sorts/new"

  root "sorts#new"

  resources :sorts
end
