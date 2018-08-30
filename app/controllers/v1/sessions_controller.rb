module V1
  class SessionsController < ApplicationController
    skip_before_action :authenticate_user, only: :create

    def create
      user = User.find_by(email: params[:email])

      if user&.valid_password?(params[:password])
        render json: user.as_json(only: [:email, :name, :authentication_token]), status: :created
      else
        head(:unauthorized)
      end
    end

    def session_profile
      @profile = DoctorProfile.find_by(user: @user)
    end
  end
end