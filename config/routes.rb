Rails.application.routes.draw do
  resources :vendors
  resources :sweets
  resources :vendor_sweets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
