class RenameExerciseIdInWeightLogs < ActiveRecord::Migration
  def change
      execute 'ALTER TABLE weight_logs ALTER COLUMN exercise_id TYPE integer USING (exercise_id::integer)'
  end
end
