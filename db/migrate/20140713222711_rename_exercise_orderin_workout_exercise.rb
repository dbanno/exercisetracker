class RenameExerciseOrderinWorkoutExercise < ActiveRecord::Migration
  def change
	rename_column :workout_exercises, :ExerciseOrder, :exercise_order
  end
end
