class WeightLogsRenameExercise < ActiveRecord::Migration
  def change
	rename_column :weight_logs, :exercise, :exercise_id
  end
end
