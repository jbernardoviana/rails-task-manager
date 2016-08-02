Rails.application.routes.draw do
  # The Rails router recognizes URLs and dispatches
  # them to a controller's action.
  # It can also generate paths and URLs,
  # avoiding the need to hardcode strings in your views.

  # List | url: /tasks
  get 'tasks' => 'tasks#index'
  # url: /tasks -> calls the index action in the controller and
  # it renders the index.html.erb page

  # Create (get & post) | url: /tasks/new
  get 'tasks/new' => 'tasks#new', as: :new_task
  post 'tasks' => 'tasks#create'

  # Get | url: /tasks/:id
  get 'tasks/:id' => 'tasks#show', as: :task

  # Edit (get & update -> patch) | url: /tasks/:id/edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Destroy | url: /tasks/:id
  delete 'tasks/:id/destroy', to: 'tasks#destroy', as: :delete_task


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
