Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

#   resources :streaks do
#   post :login, on: :collection, as: :login
# end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'streaks#index'

  post '/streaks', to: 'streaks#create'
  
  patch '/streaks.:id', to: 'streaks#update'

end
