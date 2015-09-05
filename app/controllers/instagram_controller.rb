require 'pry'

class InstagramController < ApplicationController

  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
  end

  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    session[:access_token] = response.access_token
    redirect_to '/feed'
  end

  def feed
    access_token = session[:access_token]
    response = HTTParty.get("https://api.instagram.com/v1/tags/timessquare/media/recent?access_token=" + access_token)
    binding.pry
    @results = response['data']
    render 'feed.html.erb'
  end

end
