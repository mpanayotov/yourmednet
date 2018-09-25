class AddCityToDoctorProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :doctor_profiles, :city, :string
  end
end
