class CreateUserTriggers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_triggers do |t|
      t.integer :user_id
      t.integer :trigger_id
      
      t.timestamps
    end
  end
end
