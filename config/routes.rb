Rails.application.routes.draw do

  get 'search_pages/search'

  resources :stores do
    resources :products
  end
  root 'search_pages#search'
end
