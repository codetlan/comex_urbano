ComexUrbano::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :abouts



  devise_for :users

  scope "/admin" do
    resources :users
    resources :roles
  end

  get '/proximamente' => 'static#proximamente'

  get '/terminos' => 'static#terminos'


  resources :sections, path: '/admin/sections', only: [:index, :new, :edit, :create, :update, :destroy]

  resources :categories, path: '/admin/categories', only: [:index, :new, :edit, :create, :update, :destroy]

  resources :landing_pages, path: '/admin', only: [:index, :new, :edit, :create, :update]

  resources :videos, path: '/admin/videos', only: [:list, :new, :edit, :create, :update, :destroy] do
    get '/'  => 'videos#list', on: :collection
  end

  resources :photos, path: '/admin/photos', only: [:list, :new, :edit, :create, :update, :destroy] do
    get '/' => 'photos#list', on: :collection
  end

  #resources :posts, path: '/admin/posts', only: [:list, :new, :edit, :create, :update, :destroy] do
  #  get '/' => 'posts#list', on: :collection
  #end

  resources :abouts, path: '/admin/abouts', only: [:list, :new, :edit, :create, :update, :destroy] do
    get '/' => 'abouts#list', on: :collection
  end

  resources :videos, :photos, only: [:index, :show] do
    resources :publications
  end

  #resources :posts, :abouts, only: [:index, :show]


  resources :images

  resources :banners

  #namespace :admin do
   # resources :videos
  #end

  get '/admin' => 'admin#index'

  get '/admin/banners' => 'banners#index'

  get 'tags/:tag', to: 'posts#index', as: :tag

  get 'videos/tags/:tag', to: 'videos#index', as: :tag_video

  get 'photos/section/:section_id', to: 'photos#index', as: :photos_section

  get 'videos/section/:section_id', to: 'videos#index', as: :videos_section

  #get 'posts/section/:section_id', to: 'posts#index', as: :posts_section

  get 'search/', to: 'home#search', as: :search

  #get 'posts/search/:section_id', to: 'posts#index', as: :posts_search

  #get 'videos/search/:section_id/:year', to: 'videos#index', as: :videos_year

  #get 'photos/search/:section_id/:year', to: 'photos#index', as: :photos_year


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  #root 'static#proximamente'
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

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show"
  end
end
