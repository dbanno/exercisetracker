class Workout < ActiveRecord::Base
    has_many :workout_exercises
	has_many :exercises, through: :workout_exercises
	
	belongs_to :user
	
	accepts_nested_attributes_for :exercises
	#attr_accessible :workout_id
	
	validates :name, presence: true, length: { maximum: 100 }
	
	
	def add_exercise(exercise,order)
		workout_exercises.create!(exercise_id: exercise.id, exerciseorder: order)
	end
	def remove_exercise(exercise)
		workout_exercises.find_by(exercise_id: exercise.id).destroy
	end
end
