Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get '/dashboard-units', to: 'units#dashboard', as: 'unit_dashboard'
  get '/unit-event-edit/:id', to: 'units#event_edit'
  get '/unit-remove-cadet/:eid/:cid', to: 'units#unit_remove_cadet'
  get '/unit-add-cadet/:eid/:cid', to: 'units#unit_add_cadet'

  post 'unit-push-manager-changes', to: 'units#push_manager'
  post '/unit-create-event-cadet/:eid', to: 'units#cadet_event_create'

  get '/unit-edit-manager', to: 'units#edit_manager', as: 'unit_edit_manager'

  get '/admin-board', to: 'admin#dashboard', as: 'admin_dashboard'
  get '/admin-event-edit/:id', to: 'admin#event_edit'
  get '/admin-event-view/:id', to: 'admin#event_view'


  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/logout', to: 'sessions#destroy'

end
