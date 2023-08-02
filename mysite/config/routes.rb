Rails.application.routes.draw do
  root 'welcome#main'
  get '/welcome', to: 'welcome#home'
  get '/welcome/about', to: 'welcome#about'

  resources :articles
end
