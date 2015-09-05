Rails.application.routes.draw do

  root :to => 'instagram#connect'

  get '/oauth/callback' => 'instagram#callback'

  get '/feed' => 'instagram#feed'

  get '/pictures/:tag_id' => 'instagram#pictures'

end
