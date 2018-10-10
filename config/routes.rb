Rails.application.routes.draw do
  resources :students do
    collection do
      get 'search', to: 'students#search'
    end
  end
  resources :courses do
    collection do
      get 'search', to: 'courses#search'
    end
  end
  resources :sections do
    collection do
      get 'search', to:'sections#search'
    end
  end
  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
