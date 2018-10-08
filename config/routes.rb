Rails.application.routes.draw do
  resources :students do
    collection do
      get 'search'
      post 'add_section'
    end
  end
  resources :courses do
    collection do
      get 'search'
    end
  end
  resources :sections do
    collection do
      get 'search'
      post 'add_student'
    end
  end
  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
