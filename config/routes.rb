Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get '/landing', to: 'client_business#landing', as: 'landing'

  get '/activities', to: 'client_business#activities', as: 'activities'

  get '/reading_rainbow', to: 'client_business#reading_rainbow', as: 'reading_rainbow'

  get '/seedbank', to: 'client_business#seedbank', as: 'seedbank'

  root 'client_business#landing'
  
  get 'main/evenly/:number1/:number2', to: 'main#evenly', as: 'evenly'

  get '/cubed', to: 'main#cubed', as: 'cubed'

  get 'main/palindrome/:input_string', to: 'main#palindrome', as: 'palindrome'

  get 'main/random/:min_number/:max_number', to: 'main#random', as: 'random'

  get 'main/madlib/:noun/:verb/:adjective', to: 'main#madlib', as: 'madlib'
  
  # Defines the root path route ("/")
  # root "posts#index"
end
