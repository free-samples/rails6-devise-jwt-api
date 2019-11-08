Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/current_user_info'

  get 'forbidden', to: 'custom_devise_responses#index'

  devise_for :users, defaults: { format: :json }, 
    controllers: {
      sessions: 'users/sessions'
    }
  get 'destinations', to: 'destinations#index'
  root to: 'home#index'
  get '/user/', to: 'users#current_user_info'
end
