Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'home#index'
  get('/users', to: 'users#index')
  get('/users/new', to: 'users#new')
  get('/users/:id', to: 'users#show')
  post('/users', to: 'users#create')

  get('/insults', to: 'insults#index')
  get('/insults/new', to: 'insults#new')
  get('/insults/:id', to: 'insults#show')
  post('/insults', to: 'insults#create')

  get('/names', to: 'names#index')
  get('/names/new', to: 'names#new')
  get('/names/:id', to: 'names#show')
  post('/names', to: 'names#create')
end
