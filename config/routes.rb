Rails.application.routes.draw do
  
  root 'welcome#home'
  get 'about', to: 'welcome#about'
  get 'credits', to: 'welcome#credits'  

end
