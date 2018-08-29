module V1
  class MedcasesController < ApplicationController
    def show
      render json: MedCase.find(params[:id].to_i)
    end

    def create
      if params[:title].present? && params[:description].present?
        MedCase.create!(title: params[:title], description: params[:description], author: @user)
        head(:created)
      else
        head(:bad_request, message: 'title and description must be present')
      end
    end
  end
end