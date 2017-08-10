class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :runtime
      t.string :poster_path
      t.integer :runtime
      t.string :release_date
      t.string :release_status
	  t.string :original_language

      t.timestamps
    end
  end
end
