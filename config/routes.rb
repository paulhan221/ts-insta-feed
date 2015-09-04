Rails.application.routes.draw do

  root :to => 'instagram#connect'

  get '/oauth/callback' => 'instagram#callback'

  get '/feed' => 'instagram#feed'

end
