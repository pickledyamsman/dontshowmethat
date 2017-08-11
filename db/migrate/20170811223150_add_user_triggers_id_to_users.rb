class AddUserTriggersIdToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :user_trigger_id, :integer
  end
end
