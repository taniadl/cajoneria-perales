Rails.application.routes.draw do
  get 'contacto', to: 'paginas#contacto', as: :contacto
  get 'acerca', to: 'paginas#acerca', as: :acerca
  # get 'cajons', to: 'cajons#index', as: :cajons
  # get 'cajons', to: 'cajons#new'
  # post 'cajons', to: 'cajons#create'
  # get 'cajons/:id/edit', to: 'cajons#edit'
  # patch 'cajons/:id', to: 'cajons#update'
  # get 'cajons/:id', to: 'cajons#show', as: :cajon
  # delete 'cajons/:id' to: 'cajons#destroy'

  resources :cajons

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'paginas#home'
end
