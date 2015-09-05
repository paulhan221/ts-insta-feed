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
    response = HTTParty.get("https://api.instagram.com/v1/tags/timessquare/media/recent?access_token=" + access_token + "&count=5")
    @results = response
    render 'feed.html.erb'
  end

  def pictures
    access_token = session[:access_token]
    next_tag_id = params[:tag_id]
    response = HTTParty.get("https://api.instagram.com/v1/tags/timessquare/media/recent?access_token=" + access_token + "&next_max_tag_id=" + next_tag_id + "&count=5")
    @results = response
    respond_to do |format|
      format.js {}
    end
  end

end
