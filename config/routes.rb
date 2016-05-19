Rails.application.routes.draw do
  root 'users#index'

  # rails s -p $PORT -b $IP
  get 'sessions/new'
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  
  get 'aboutus' => 'houses#aboutus'
  get 'faq' => 'houses#faq'
  get 'contactus' => 'houses#contactus'
  get 'admin' => 'users#admin'
  get 'myaccount' => 'users#myaccount'
  get 'history' => 'users#history'
  get 'index' => 'messages#index'
  get 'users/:id/privacy' => 'users#privacy'
  
  resources :users
  resources :houses
  resources :reviews
  resources :histories
  resources :messages

end
