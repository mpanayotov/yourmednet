module V1
  class CasefeedController < ApplicationController
    def feed
      render json: MedCase.all()
    end
  end
end