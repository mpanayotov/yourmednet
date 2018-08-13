class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_profiles do |t|
      t.string :specialty
      t.integer :age
      t.text :biography
      t.string :workplace
      t.string :picture

      t.timestamps
    end
  end
end
