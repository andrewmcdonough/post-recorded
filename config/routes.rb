Rails.application.routes.draw do

  resources :recorded_posts
  resources :recorded_gets

  get '/pixel', :to => "recorded_gets#create"

end
