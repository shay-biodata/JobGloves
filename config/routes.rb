Rails.application.routes.draw do 
  resources :histories
  resources :requests
  root "jobs#index"
  get "signup" => "users#new"


  resources :users 
  get "users/:id/jobs" => "users#show",:defaults => { :page => 'jobs' }
  get "users/:id/applicants" => "users#show",:defaults => { :page => 'applicants' }

  resources :jobs do
    resources :requests
  end
  

  resources :positions
  resource :session, only:[:new,:create,:destroy]

end
