Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :todo_items, only: [:index, :create, :update, :destroy] do
    collection do
      get :get_status
    end
  end
end
