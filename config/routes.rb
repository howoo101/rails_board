Rails.application.routes.draw do
  
  root 'home#index'
  
  resources :posts,  controller: "home"
  # get 'home/index'
  # get 'home/new'
  # post 'home/create',as: 'posts'
  # get 'home/destroy/:post_id', to: 'home#destroy' ,as: 'post_destroy'
  # get 'home/edit/:post_id', to:'home#edit'
  # patch 'home/update/:post_id', to:'home#update', as:'post'
  
end
