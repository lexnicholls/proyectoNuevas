Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { registrations: "registrations"}
  resources :appointments
  resources :offices
  resources :office_types do   resources :offices end
  resources :patients
  resources :doctors
  resources :specialties do  resources :doctors end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
