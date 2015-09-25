Rails.application.routes.draw do
  get 'chew_orders/new'

  root 'html_pages#home'

  get 'about_shed_finder'   => 'html_pages#about_shed_finder'
  get 'sell_shed_antlers' => 'html_pages#sell_shed_antlers'
  get 'buy_shed_antlers' => 'html_pages#buy_shed_antlers'
  get 'buy_antler_dog_chews' => 'html_pages#buy_antler_dog_chews'
  get 'form_success' => 'html_pages#form_success'


#  get 'shed_finder_sign_up' => 'users#new'
#  post '/users' => 'users#create'
#  get "users/:id/edit" => "users#edit", :as => :user


 resources :users
 resources :chew_orders
 resources :messages




  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  get 'user_dashboard' => 'users#user_dashboard'







  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
