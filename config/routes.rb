Rails.application.routes.draw do
  # user_salaries
  resources :user_salaries, only: [:index]
  post '/user_salaries/monthly_detail', to: 'user_salaries#monthly_detail'

  # devise
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
