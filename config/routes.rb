Rails.application.routes.draw do
  
  root 'index#index'

  get 'index/journals'

  get 'index/funded_projects'

  get 'index/conference'

  get 'index/consulting_projects'

  # get 'index/index'

  get 'index', to: 'index#index' 

  resources :consulting_projects
  resources :funded_projects
  resources :book_details
  resources :conference_details
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :journal_details
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
