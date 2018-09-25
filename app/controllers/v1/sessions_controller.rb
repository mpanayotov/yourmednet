module V1
  class SessionsController < ApplicationController
    before_action :find_profile, only: [:session_profile, :update_profile]
    skip_before_action :authenticate_user, only: :create_session

    def session_profile
      @profile
    end

    def create_session
      user = User.find_by(email: params[:email])

      if user&.valid_password?(params[:password])
        render json: user.as_json(only: [:email, :name, :authentication_token]), status: :created
      else
        head(:unauthorized)
      end
    end

    def update_profile
      if @profile.update(profile_params)
        head(:ok)
      else
        render json: @profile.errors, status: :unprocessable_entity
      end
    end

    private

    def find_profile
      @profile = DoctorProfile.find_by(user: @user)
    end

    def profile_params
      @profile_params = params.require(:profile).permit(
                  :picture, :workplace, :specialty, :city, :biography, :anonymous,
                  user_attributes: [:name])
    end
  end
end
