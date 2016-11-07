module ApplicationHelper
  def new_oauth_token_path
    "#{ENV['SERVER_BASE_URL']}/oauth/authorize?client_id=#{ENV['OAUTH_TOKEN']}&redirect_uri=#{ENV['OAUTH_REDIRECT_URI']}&response_type=code"
  end
end
