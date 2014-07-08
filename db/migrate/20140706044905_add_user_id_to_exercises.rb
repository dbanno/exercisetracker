class AddUserIdToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :user_id, :integer
	remove_column :weight_logs, :user_id
  end
end
