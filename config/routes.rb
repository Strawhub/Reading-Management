Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :books do
    resources :comments
    collection do
      get 'search'
    end
  end
  root "books#index"
end