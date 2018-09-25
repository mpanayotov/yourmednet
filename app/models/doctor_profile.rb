class DoctorProfile < ApplicationRecord
  has_one :user, as: :profile
  accepts_nested_attributes_for :user, update_only: true
  delegate :name, to: :user
  mount_uploader :picture, ProfilePictureUploader
end
