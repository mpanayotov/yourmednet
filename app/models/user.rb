class User < ApplicationRecord
  acts_as_token_authenticatable

  devise :database_authenticatable

  belongs_to :profile, polymorphic: true

  has_many :med_cases

  has_many :answers

  def display_name
    profile.anonymous ? anonymous_name : name
  end

  def display_picture
    profile.anonymous ? { url: profile.picture.default_url } : profile.picture
  end

  private

  def anonymous_name
    "Лекар, #{profile.city}"
  end
end
