class AddAnonymousToDoctorProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :doctor_profiles, :anonymous, :boolean, default: false
  end
end
