class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.integer "Movie_ID"
      t.integer "Actor_ID"
      t.string "Character_Name"

      t.timestamps
    end
  end
end
