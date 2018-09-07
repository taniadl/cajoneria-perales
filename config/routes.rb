Rails.application.routes.draw do
  get 'contacto', to: 'paginas#contacto', as: :contacto
  get 'acerca', to: 'paginas#acerca', as: :acerca
  get 'cajones', to: 'cajones#index', as: :cajones
  post 'cajones', to: 'cajones#create'
  get 'cajones/:id', to: 'cajones#show', as: :cajon
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'paginas#home'
end
