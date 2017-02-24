Rails.application.routes.draw do
  get '/robots.txt' => 'home#robots'
  root 'home#index', only: [:index]
end