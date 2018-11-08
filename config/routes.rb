Rails.application.routes.draw do
    resources :cryptos

    get '/static_page/home', to: 'static_page#home'
    get '/static_page/init', to: 'static_page#init'
    get '/static_page/perform', to: 'static_page#perform'
    get '/static_page/perform', to: 'static_page#save'
end
