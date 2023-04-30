class CreateStudios < ActiveRecord::Migration[7.0]
  def change
    create_table :studios do |t|
      t.studio "name"

      t.timestamps
    end
  end
end
