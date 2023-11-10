Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/bachelorettes/:bach_id', to: 'bachelorettes#show'

  get '/bachelorettes/:bach_id/contestants', to: 'bachelorette_contestants#index'
end
