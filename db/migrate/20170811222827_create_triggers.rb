class CreateTriggers < ActiveRecord::Migration[5.1]
  def change
    create_table :triggers do |t|
      t.string :name
      t.integer :user_trigger_id
      t.integer :movie_trigger_id

      t.timestamps
    end
  end
end
