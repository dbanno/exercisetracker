class WorkoutExercise < ActiveRecord::Base
	belongs_to :exercise
	belongs_to :workout
	#attr_accessible :exercise_id, :workout_id, :exerciseorder
	
	accepts_nested_attributes_for :exercise
	#default_scope -> { order('ExerciseOrder ASC') }
	validates :exercise_id, presence: true
	validates :workout_id, presence: true
	validates :ExerciseOrder, presence: true
end
