Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/bachelorettes/:bach_id', to: 'bachelorettes#show', as: 'bach_show'

  get '/bachelorettes/:bach_id/contestants', to: 'bachelorette_contestants#index', as: 'bach_cont_index'

  get '/contestants/:cont_id', to: 'contestants#show', as: 'cont_show'

  get '/outings/:outing_id', to: 'outings#show', as: 'out_show'

  delete '/outings/:outing_id/contestants', to: 'contestant_outings#destroy', as: 'cont_out_destroy'
end
