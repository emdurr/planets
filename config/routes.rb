Rails.application.routes.draw do
  

  root to: 'welcome_page#home'
  resources :planets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
