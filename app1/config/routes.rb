Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # to: 'CONTROLLER # ACTION'

  get '/welcome', to: 'welcome#home'
  get '/welcome/about', to: 'welcome#about'

  # Defines the root path route ("/")
  root 'welcome#main'
end
