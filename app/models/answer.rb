class Answer < ApplicationRecord
  belongs_to :med_case
  has_many :comments, as: :commentable
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  default_scope { order(created_at: :desc) }
end
