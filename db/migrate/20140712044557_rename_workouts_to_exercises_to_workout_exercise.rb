class RenameWorkoutsToExercisesToWorkoutExercise < ActiveRecord::Migration
  def change
	rename_table :workouts_to_exercises, :workout_exercise
  end
end
