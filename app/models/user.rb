class User < ApplicationRecord
  acts_as_token_authenticatable

  devise :database_authenticatable

  belongs_to :profile, polymorphic: true
end
