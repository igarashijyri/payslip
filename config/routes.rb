Rails.application.routes.draw do
  resources :user_salaries, only: [:index]
  post '/user_salaries/monthly_detail', to: 'user_salaries#monthly_detail'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
