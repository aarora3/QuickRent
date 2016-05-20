Rails.application.routes.draw do
  root 'users#index'

  # rails s -p $PORT -b $IP
  get 'sessions/new'
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  
  
  get 'aboutus' => 'houses#aboutus'
  get 'help' => 'houses#help'
  get 'need' => 'houses#need'
  get 'proedit' => 'houses#proedit'
  get 'cost' => 'houses#cost'
  get 'place' => 'houses#place'
  get 'mainst' => 'houses#mainst'
  get 'chapin' => 'houses#chapin'
  get 'floral' => 'houses#floral'
  get 'faq' => 'houses#faq'
  #get 'myaccount' => 'users#myaccount'
  get 'contactus' => 'houses#contactus'
  get 'admin' => 'users#admin'
  get 'history' => 'users#history'
  get 'index' => 'messages#index'
  #get 'accountsetting' => 'users#accountsetting'
  get "houses/myaccount"
  get "houses/editprofile"
  get "houses/myreview"
  get "houses/privacy"
  match '/myaccount' => 'houses#myaccount', :via => :get
  match '/editprofile' => 'houses#editprofile', :via => :get
  match '/myreview' => 'houses#myreview', :via => :get
  match '/privacy' => 'houses#privacy', :via => :get

  get 'user_history' => 'users#user_history'

  get 'messages' => 'messages#index'
  get 'messages' => 'messages#new'
  get 'users/:id/privacy' => 'users#privacy'

  resources :users
  resources :histories
  
  resources :houses
  resources :reviews
  resources :messages
  resources :dealers

end