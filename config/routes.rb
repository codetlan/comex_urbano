ComexUrbano::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  #resources :abouts


  #resources :roles

  #devise_for :users

  #get '/proximamente' => 'static#proximamente'


  #resources :sections, path: '/admin/sections', only: [:index, :new, :edit, :create, :update]

  #resources :categories, path: '/admin/categories', only: [:index, :new, :edit, :create, :update]

  #resources :landing_pages, path: '/admin', only: [:index, :new, :edit, :create, :update]

  #resources :videos, path: '/admin/videos', only: [:list, :new, :edit, :create, :update] do
  #  get '/'  => 'videos#list', on: :collection
  #end

  #resources :photos, path: '/admin/photos', only: [:list, :new, :edit, :create, :update] do
  #  get '/' => 'photos#list', on: :collection
  #end

  #resources :posts, path: '/admin/posts', only: [:list, :new, :edit, :create, :update] do
  #  get '/' => 'posts#list', on: :collection
  #end

  #resources :abouts, path: '/admin/abouts', only: [:list, :new, :edit, :create, :update] do
  #  get '/' => 'abouts#list', on: :collection
  #end

  #resources :videos, :photos, :posts, :abouts, only: [:index, :show]


  #resources :image

  #resources :banners

  #namespace :admin do
   # resources :videos
  #end

  #get '/admin' => 'admin#index'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static#proximamente'

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
