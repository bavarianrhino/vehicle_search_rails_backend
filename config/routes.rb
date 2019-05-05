Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :cars
    resources :favorites
    resources :users
        post '/login', to: 'auth#login', as: :login
        get '/profile', to: 'users#profile', as: :profile
        delete '/favorites', to: 'favorites#destory', as: :destory
end
