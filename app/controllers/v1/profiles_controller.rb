module V1
  class ProfilesController < ApplicationController
    def show
      render json: DoctorProfile.first
    end
  end
end