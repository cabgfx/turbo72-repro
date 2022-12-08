Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#index'

  get '/exception', to: 'pages#exception'
  get '/missing', to: 'pages#missing'

  resource :frame, only: [] do
    get 'exception', on: :member, as: 'exception'
    get 'missing', on: :member, as: 'missing'
  end
end
