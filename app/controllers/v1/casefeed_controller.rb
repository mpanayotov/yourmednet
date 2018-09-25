module V1
  class CasefeedController < ApplicationController
    def feed
      @medcases = scoped_medcases.order('created_at desc')
    end

    private

    def scoped_medcases
      scope = MedCase.includes({ author: :profile }, :documents, {answers: :comments}, :comments)
      scope = scope.where(*search_rules) if filter_params[:search].present?
      scope
    end

    def search_rules
      ["lower(title) LIKE :search OR lower(description) LIKE :search",
      search: "%#{filter_params[:search].downcase}%"]
    end

    def filter_params
      @filter_params ||= params[:filter].present? ? params.require(:filter).permit(:search) : {}
    end
  end
end
