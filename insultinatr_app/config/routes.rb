Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get('/login', to: 'authentication#login')
  post('/authenticate', to: 'authentication#authenticate')
  get('/logout', to: 'authentication#destroy')

  resources(:authenticate, only: :destroy)
  resources(:insults)
  resources(:users)
  resources(:names)

end