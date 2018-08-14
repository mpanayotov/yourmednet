module V1
  class ProfilesController < ApplicationController
    def show
      render json: DoctorProfile.find_by(user: @user)
    end
  end
end