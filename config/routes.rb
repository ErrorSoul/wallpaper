Rails.application.routes.draw do
  get 'clues/show'

  devise_for :slider_mains, ActiveAdmin::Devise.config
  get 'collections/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'main_page#index'

  resources :product
  resources :labels, only: :show
  resources :countries, only: :show
  resources :collections, only: :show
  resources :paints, only: :show
  resources :types, only: :show
  resources :areas, only: :show
  resources :orders, only: :create
  resources :clues, only: :show
  resources :clue_types, only: [:show, :index]
  resources :line_items, only: [:create, :destroy,:update, :show], defaults: { format: 'json' }
  get 'about' => 'main_page#about'
  get 'delivery' => 'main_page#delivery'
  get 'contact'  => 'main_page#contact'
  get 'more/:id' => "main_page#more"

  get 'more_type/:mode_id/:elem_id/:id' => "main_page#more_type"
  #robot.txt
  #get '/robots.txt' => 'main_page#robots'
  get "sitemap.xml" => "main_page#sitemap",  defaults: {format: :xml}, as: :sitemap
  get "robots.txt" => "main_page#robots", defaults: {format: 'txt'}, as: :robots
  get 'cart' => "main_page#cart"
  get '/*s/' => redirect('/')



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
