class AddPolymorphismToUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.references :profile, polymorphic: true
    end
  end
end
