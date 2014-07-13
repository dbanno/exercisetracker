class FixWorkoutExerciseTables < ActiveRecord::Migration
  def change
  
	drop_table :workout_exercises
	rename_table :workout_exercise, :workout_exercises
  end
end
