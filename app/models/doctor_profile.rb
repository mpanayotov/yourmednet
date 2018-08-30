class DoctorProfile < ApplicationRecord
  has_one :user, as: :profile
  delegate :name, to: :user
  mount_uploader :picture, ProfilePictureUploader
end
