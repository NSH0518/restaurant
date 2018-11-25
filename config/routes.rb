Rails.application.routes.draw do
  resources :payments, only: [:new, :create]
  get 'sign_up/new'
  get 'sign_up/create'
  get 'login', to: "login#new"
  post 'login', to: "login#create"
  delete 'logout', to: "login#destroy"
  get 'admin/login', to: "login#admin_login"
  post 'admin/login', to: "login#create_admin_session"
  delete 'admin/logout', to: "login#destroy_admin_session"
  get 'sign_up', to: 'sign_up#new'
  post 'sign_up', to: 'sign_up#create'
 
  
  resources :orders do
    collection do
      post :create_order_item
    end
  end
  
  resources :orderings, only: [:index] do
    collection do
      post "order"
      get "checkout"
      post "update_order_items"
    end
    
    member do
      delete "downturn_quantity"
      patch "upturn_quantity"
    end
  end
  
  resources :admins
  resources :customers
  resources :menu_items
  resources :categories
  
  namespace :api do
    resources :menu_items
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
