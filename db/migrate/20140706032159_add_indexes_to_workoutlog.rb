class AddIndexesToWorkoutlog < ActiveRecord::Migration
  def change
  add_index :weight_logs, [:user_id, :created_at]
  end
end
