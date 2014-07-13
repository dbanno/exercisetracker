class WorkoutExercise < ActiveRecord::Base
	belongs_to :exercise
	belongs_to :workout
	

	#default_scope -> { order('ExerciseOrder ASC') }
	validates :exercise_id, presence: true
	validates :workout_id, presence: true
	validates :ExerciseOrder, presence: true
end
