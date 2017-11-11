Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root to: 'home#index'

  Rails.application.routes.draw do
      devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
