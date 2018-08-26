class DoctorProfile < ApplicationRecord
  has_one :user, as: :profile
  delegate :name, to: :user
end
