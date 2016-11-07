class SessionsController < ApplicationController
  def create
    req_params = "client_id=#{ENV['OAUTH_TOKEN']}&client_secret=#{ENV['OAUTH_SECRET']}&code=#{params[:code]}&grant_type=authorization_code&redirect_uri=#{ENV['OAUTH_REDIRECT_URI']}"
    response = JSON.parse RestClient.post("#{ENV['SERVER_BASE_URL']}/oauth/token", req_params)
    session[:access_token] = response['access_token']
    redirect_to root_path
  end
end
