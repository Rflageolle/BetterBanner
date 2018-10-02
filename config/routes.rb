Rails.application.routes.draw do
  resources :students
  resources :courses, :sections
  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
