Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks do 
    resources :subtasks
  end
    #creates all 7 routes for you
  root "tasks#index"
end
