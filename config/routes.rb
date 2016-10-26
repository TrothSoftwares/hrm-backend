Rails.application.routes.draw do
  resources :bids
  resources :jobs
  resources :attendances
  resources :events
  resources :leaverolls
  resources :employees

   devise_for :users,  defaults: { format: :json }, controllers: { sessions: 'sessions' }
  #  match 'users/id:' => 'sessions#destroy', via: :delete

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
