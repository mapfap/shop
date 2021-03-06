Rails.application.routes.draw do
  devise_for :members, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  devise_for :models
  resources :product_description_images

  resources :product_thumbnails

  resources :staff_actions

  resources :staffs

  resources :positions

  resources :permissions

  resources :wish_items

  resources :orders

  resources :order_items

  resources :addresses

  resources :cities

  resources :guests

  resources :provinces

  resources :regions

  resources :imports

  resources :tags

  resources :categories

  resources :products

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'catalog#index'

  get 'catalog' => 'catalog#index'
  get 'app' => 'app#index'
  get 'profile' => 'app#user_profile'
  get 'search' => 'app#product_search'
  
  get 'app/category' => 'app#category'
  get 'app/home' => 'app#home'
  get 'app/payment_method' => 'app#payment_method'
  get 'app/pproduct' => 'app#pproduct'
  get 'app/product' => 'app#product'
  get 'app/profile' => 'app#profile'
  get 'app/sales_record' => 'app#sales_record'
  get 'app/sales_summary' => 'app#sales_summary'
  get 'app/search' => 'app#search'
  get 'app/shipping_address' => 'app#shipping_address'
  get 'app/transacton_detail' => 'app#transacton_detail'
  get 'app/wishlist' => 'app#wishlist'

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
