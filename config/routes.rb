Rails.application.routes.draw do
  resources :stores do
    resources :products
  end
  
end
