class MedCase < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :comments, as: :commentable
  has_many :documents
  has_many :answers
end
