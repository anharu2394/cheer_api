Rails.application.routes.draw do
  resources :targets
  resources :messages
  mount_devise_token_auth_for 'User', at: 'auth'
end
