module V1
  class CommentsController < ApplicationController
    def create
      if params_present?
        Comment.create!(content: params[:content].to_s.strip, author: @user, commentable: commentable)
        head(:ok)
      else
        head(:bad_request, message: 'content, commentable_id and commentable_type must be present')
      end
    end

    private

    def params_present?
      params[:content].present? && params[:commentable_id].present? && params[:commentable_type].present?
    end

    def commentable
      params[:commentable_type].to_s.constantize.find(params[:commentable_id].to_i)
    end
  end
end