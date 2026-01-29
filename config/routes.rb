Agenda::Application.routes.draw do

  get '/usuarios', to: 'usuarios#index', as: :usuarios # usuarios_path ( index)
  get 'usuarios/new', to: 'usuarios#new', as: :new_usuario # new_usuario_path
  get 'usuarios/:id', to: 'usuarios#show', as: :usuario # usuario_path 
  post 'usuarios', to: 'usuarios#create', as: :usuario
  get 'usuarios/:id/edit', to: 'usuarios#edit', as: :edit_usuario
  put 'usuarios/:id', to: 'usuarios#update', as: :usuario
  delete 'usuarios/:id', to: 'usuarios#destroy', as: :usuario
  get 'usuario_contatos', to: 'usuarios#usuario_contatos', as: :usuario_contatos

  get '/contatos', to: 'contatos#index', as: :contatos # contatos_path ( index)
  get 'contatos/new', to: 'contatos#new', as: :new_contato # new_contato_path
  get 'contatos/:id', to: 'contatos#show', as: :contato # contato_path 
  post 'contatos', to: 'contatos#create', as: :contato
  get 'contatos/:id/edit', to: 'contatos#edit', as: :edit_contato
  put 'contatos/:id', to: 'contatos#update', as: :contato
  delete 'contatos/:id', to: 'contatos#destroy', as: :contato
  get 'contato_telefones', to: 'contatos#contato_telefones', as: :contato_telefones


  root :to => 'login#login'

  post '/login', to: 'login#logar', as: :logar
  get '/login', to: 'login#logout', as: :logout

  get '/telefones', to: 'telefones#index', as: :telefones # telefones_path ( index)
  get 'telefones/new', to: 'telefones#new', as: :new_telefone # new_telefone_path
  get 'telefones/:id', to: 'telefones#show', as: :telefone # telefone_path 
  post 'telefones', to: 'telefones#create', as: :telefone
  get 'telefones/:id/edit', to: 'telefones#edit', as: :edit_telefone
  put 'telefones/:id', to: 'telefones#update', as: :telefone
  delete 'telefones/:id', to: 'telefones#destroy', as: :telefone

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
