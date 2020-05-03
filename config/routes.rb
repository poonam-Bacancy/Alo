Rails.application.routes.draw do

  get 'home/index'
  root to: 'home#landing_page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "home#index"
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords' }

  devise_scope :user do
    # root to: "users/sessions#new"
    # get 'users/callback', to: 'users/sessions#callback'
  end
end
