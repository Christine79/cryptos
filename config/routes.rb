Rails.application.routes.draw do
    resources :cryptos


    get '/cryptos/init', to: 'services#init'
end
