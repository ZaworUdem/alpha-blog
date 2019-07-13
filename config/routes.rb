Rails.application.routes.draw do
  
  root 'welcome#home'
  get 'about', to: 'welcome#about'
  get 'credits', to: 'welcome#credits' 
  
  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

end
