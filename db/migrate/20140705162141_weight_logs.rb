class WeightLogs < ActiveRecord::Migration
  def change
	add_column :weight_logs, :user_id, :integer
  end
end
