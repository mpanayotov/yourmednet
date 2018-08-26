module V1
  class ProfilesController < ApplicationController
    def show
      @profile = DoctorProfile.find_by(user: @user)
    end
  end
end