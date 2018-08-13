class DoctorProfile < ApplicationRecord
  has_one :user, as: :profile
end
