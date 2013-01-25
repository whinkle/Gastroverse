Gastroverse::Application.routes.draw do
  get "unknown_gastroverse/bell_pepper"
  get "unknown_gastroverse/tomato"
  get "unknown_gastroverse/sweet_potato"  
  get "unknown_gastroverse/home"
  
  match '/unknown_gastroverse/home', to: 'unknown_gastroverse#home'  
  match '/unknown_gastroverse/sweetpotato', to: 'unknown_gastroverse#sweet_potato'  
  match '/unknown_gastroverse/tomato', to: 'unknown_gastroverse#tomato'  
  match '/unknown_gastroverse/bellpepper', to: 'unknown_gastroverse#bell_pepper'


  get "known_gastroverse/mother_sauces"
  get "known_gastroverse/roasted_chicken"
  get "known_gastroverse/soup"  
  get "known_gastroverse/home"
  
  match '/known_gastroverse/home', to: 'known_gastroverse#home'
  match '/known_gastroverse/soup', to: 'known_gastroverse#soup'  
  match '/known_gastroverse/roasted_chicken', to: 'known_gastroverse#roasted_chicken'
  match '/known_gastroverse/mother_sauces', to: 'known_gastroverse#mother_sauces'

  
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  get "home/new"

  get "login/new"

  resources :users

  root to: 'landing_page#home'

  match '/signup',  to: 'users#new'
  match '/about',   to: 'landing_page#about'
  match '/contact', to: 'landing_page#contact'
  
  get "static_pages/home"

  get "static_pages/help"

  get "landing_page/home"

  get "landing_page/about"
  
  get "landing_page/contact"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
