class CreateMovieTriggers < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_triggers do |t|
      t.integer :movie_id
      t.integer :trigger_id
      
      t.timestamps
    end
  end
end
