Rails.application.routes.draw do
  root 'users#index'

  # rails s -p $PORT -b $IP
  
  get 'sessions/new'
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  
  resources :users
  get 'admin' => 'users#admin'
  get 'myaccount' => 'users#myaccount'
  get 'history' => 'users#history'
  
  
  resources :houses

  get 'aboutus' => 'houses#aboutus'
  get 'contactus' => 'houses#contactus'
  
  
  
  
  resources :reviews
  
  resources :histories
  
  resources :messages
  get 'index' => 'messages#index'

end
