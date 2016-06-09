Rails.application.routes.draw do
  # In config/routes.rb
  root "comments#index"

  # Routes for the Standing resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

# Routes for the Action resource:
  # CREATE
  get "/actions/new", :controller => "actions", :action => "new"
  post "/create_action", :controller => "actions", :action => "create"

  # READ
  get "/actions", :controller => "actions", :action => "index"
  get "/actions/:id", :controller => "actions", :action => "show"

  # UPDATE
  get "/actions/:id/edit", :controller => "actions", :action => "edit"
  post "/update_action/:id", :controller => "actions", :action => "update"

  # DELETE
  get "/delete_action/:id", :controller => "actions", :action => "destroy"
  #------------------------------

  # Routes for the Cast resource:
  # CREATE
  get "/casts/new", :controller => "casts", :action => "new"
  post "/create_cast", :controller => "casts", :action => "create"

  # READ
  get "/casts", :controller => "casts", :action => "index"
  get "/casts/:id", :controller => "casts", :action => "show"

  # UPDATE
  get "/casts/:id/edit", :controller => "casts", :action => "edit"
  post "/update_cast/:id", :controller => "casts", :action => "update"

  # DELETE
  get "/delete_cast/:id", :controller => "casts", :action => "destroy"
  #------------------------------

  # Routes for the Fantasy_contestant resource:
  # CREATE
  get "/fantasy_contestants/new", :controller => "fantasy_contestants", :action => "new"
  post "/create_fantasy_contestant", :controller => "fantasy_contestants", :action => "create"

  # READ
  get "/fantasy_contestants", :controller => "fantasy_contestants", :action => "index"
  get "/fantasy_contestants/:id", :controller => "fantasy_contestants", :action => "show"

  # UPDATE
  get "/fantasy_contestants/:id/edit", :controller => "fantasy_contestants", :action => "edit"
  post "/update_fantasy_contestant/:id", :controller => "fantasy_contestants", :action => "update"

  # DELETE
  get "/delete_fantasy_contestant/:id", :controller => "fantasy_contestants", :action => "destroy"
  #------------------------------


# Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  devise_for :users
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
