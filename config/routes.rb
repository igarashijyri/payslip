Rails.application.routes.draw do
  resources :user_salaries
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
