Rails40Starter::Application.routes.draw do
  resources :affiliates

  resources :products

  resources :positions, only: [:index, :show]

  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :resumes
  resources :news
  resources :groups
  
  namespace :cpanel do
    get '/' => 'front#index', as: :front_index
    resources :site_configs
    resources :news
    resources :positions
    resources :slides
  end

  devise_for :users

  get '/about' => 'front#about', as: :front_about
  # get '/news' => 'front#news', as: :front_news
  get '/corpnews' => 'front#news', as: :front_news
  get '/join' => 'front#join', as: :front_joinus
  get '/contact' => 'front#contact', as: :front_contact
  root 'front#index'
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
