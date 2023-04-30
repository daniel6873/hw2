class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string "title"
      t.integer "year_released"
      t.string "rated"
      t.integer "Studio_ID"
    

      t.timestamps
    end
  end
end
