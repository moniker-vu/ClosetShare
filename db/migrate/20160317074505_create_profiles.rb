class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :about
      t.string :profile_picture

      t.timestamps null: false
    end
  end
end
