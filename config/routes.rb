Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => 'application#home'

get 'home', to: 'application#home'
#devise_for :users, controllers: { sessions: 'users/sessions' }
get 'new', to: 'application#new'
#devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

end
