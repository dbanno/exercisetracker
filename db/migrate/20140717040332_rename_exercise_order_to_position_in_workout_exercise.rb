class RenameExerciseOrderToPositionInWorkoutExercise < ActiveRecord::Migration
  def change
	rename_column :workout_exercises, :exercise_order, :position
  end
end
