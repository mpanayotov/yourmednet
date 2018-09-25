class V1::AnswersController < ApplicationController
  def create
    if params[:content].present? && params[:medcase_id].present?
      medcase = MedCase.find(params[:medcase_id].to_i)
      Answer.create!(content: params[:content], med_case: medcase, author: @user)
      head(:created)
    else
      head(:bad_request, message: 'content and medcase_id must be present')
    end
  end
end
