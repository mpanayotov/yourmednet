module V1
  class ProfilesController < ApplicationController
    skip_before_action :authenticate_user, only: :create

    def show
      @profile = DoctorProfile.find_by(user: User.find(params[:id]))
    end

    def create
      ActiveRecord::Base.transaction do
        user = User.new(name: params[:name], email: params[:email], password: params[:password])
        DoctorProfile.create!(user: user, picture: params[:picture])
      end
      head(:created)
    end
  end
end