module V1
  class CasefeedController < ApplicationController
    before_action :set_medcase_params, only: :create

    def feed
      @medcases = scoped_medcases.order('created_at desc')
    end

    def create
      @medcase = MedCase.new(author: @user, title: @medcase_params[:title], description: @medcase_params[:description])

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

    def set_medcase_params
      @medcase_params ||= params.require(:medcase).permit(:title, :description, :document_data => [])
    end

    def scoped_medcases
      default_scope = MedCase.includes({ author: :profile }, :documents, {answers: :comments}, :comments)
      default_scope = default_scope.where("title LIKE ? OR description LIKE ?", "%#{filter_params[:search]}%", "%#{filter_params[:search]}%") if filter_params[:search].present?
      default_scope
    end

    def filter_params
      @filter_params ||= params[:filter].present? ? params.require(:filter).permit(:search) : {}
    end
  end
end