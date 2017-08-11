Rails.application.routes.draw do
  devise_for :admins
  resources :observacions
  resources :dia
  resources :semestres
  resources :asignacions
  resources :anho_carreras
  devise_for :users
  resources :detalle_aulas
  resources :asignacion_aulas
  resources :usuarios
  resources :facultads
  resources :aulas
  resources :registro_carreras

  get 'inicio/index'
  get 'inicio/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'inicio#index'
end
