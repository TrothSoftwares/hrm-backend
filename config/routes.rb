Rails.application.routes.draw do
  resources :bids
  resources :jobs
  resources :attendances
  resources :events
  resources :leaverolls
  resources :employees

  devise_for :users,  defaults: { format: :json }, controllers: { sessions: 'sessions' , registrations: 'users' }
  resources :users, only: [:index]
end
