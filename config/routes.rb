Rails.application.routes.draw do

  # user_salaries
  resources :pay_slips, only: [:index]
  post '/pay_slips/monthly_detail', to: 'pay_slips#monthly_detail'

  # devise
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # root
  root :to => 'pay_slips#index'
end
