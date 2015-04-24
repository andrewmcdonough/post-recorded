Rails.application.routes.draw do

  resources :recorded_posts
  resources :recorded_gets

  get 'recorded_get', :to => "recorded_gets#create"

  get '/pixel', :to => "recorded_gets#create", :pixel => true

end
