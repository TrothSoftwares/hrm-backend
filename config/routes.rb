Rails.application.routes.draw do
  resources :leaverolls
  resources :employees
  
  devise_for :users, controllers: { sessions: 'sessions' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
