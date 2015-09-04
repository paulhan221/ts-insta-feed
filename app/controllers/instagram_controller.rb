class InstagramController < ApplicationController
  require 'pry'
  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
  end

  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    session[:access_token] = response.access_token
    redirect_to '/feed'
  end

  def feed
    client = Instagram.client(:access_token => session[:access_token])
    binding.pry
    render 'feed.html.erb'
end

end
