Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/params_check'
  root 'welcome#index'

  resources :articles 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
