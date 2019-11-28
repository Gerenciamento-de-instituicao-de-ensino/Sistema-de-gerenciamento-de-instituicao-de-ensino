Rails.application.routes.draw do
  resources :administradors, :except => [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'logins#index'

  get ('logins/index')
  put ('logins/index')

  resources :logins, :except => [:show]

  get 'logins/sair'

end
