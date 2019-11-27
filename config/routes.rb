Rails.application.routes.draw do
  resources :administradors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'administradors#new'

end
