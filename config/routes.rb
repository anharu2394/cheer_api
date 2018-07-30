Rails.application.routes.draw do
  resources :messages, except: :update
  mount_devise_token_auth_for 'User', at: 'auth'
end
