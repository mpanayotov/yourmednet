module V1
  class MedcasesController < ApplicationController
    before_action :medcase_params, only: :create

    def show
      render json: MedCase.find(params[:id].to_i)
    end

    def create
      @medcase = MedCase.new(author: @user, title: medcase_params[:title], description: medcase_params[:description])

      if @medcase.save
        if @medcase_params[:document_data].present?
          @medcase_params[:document_data].each do |file|
            @medcase.documents.create!(document: file)
          end
        end
        head(:created)
      else
        render json: @medcase.errors, status: :unprocessable_entity
      end
    end

    private

    def medcase_params
      @medcase_params ||= params.require(:medcase).permit(:title, :description, :document_data => [])
    end
  end
end