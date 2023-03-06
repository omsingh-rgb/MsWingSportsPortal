Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get '/dashboard-units', to: 'units#dashboard', as: 'unit_dashboard'

  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/logout', to: 'sessions#destroy'

end
