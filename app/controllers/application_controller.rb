class ApplicationController < ActionController::API
  before_action :authenticate_user

  private

  def authenticate_user
    @user = User.find_by!(authentication_token: request.headers.fetch('Authentication-token'))
  rescue
    head(:unauthorized)
  end
end
