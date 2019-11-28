Rails.application.routes.draw do
  resources :administradors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'logins#index'

  get ('logins/index')
  put ('logins/index')

  get('logins/erro')

  resources :logins, :except => [:show]do
    collection do
      get :erro
    end
  end

  get 'logins/sair'

  get 'administradors/tools'

end
