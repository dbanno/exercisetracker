class CreateWorkoutsToExercises < ActiveRecord::Migration
  def change
    create_table :workouts_to_exercises do |t|
      t.integer :workout_id
      t.integer :exercise_id
      t.integer :ExerciseOrder

      t.timestamps
    end
	add_index :workouts_to_exercises, [:workout_id, :exercise_id, :ExerciseOrder], unique: true,  :name => 'index_workouts_unique'
  end
end
