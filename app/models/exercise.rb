class Exercise < ActiveRecord::Base
	has_many :weight_logs, dependent: :destroy
	
	belongs_to :user
	#attr_accessible :exercise_id
	has_many :workout_exercises
	has_many :workouts, through: :workout_exercises
	
	accepts_nested_attributes_for :workouts
	
	validates :name, presence: true, length: { maximum: 100 }
	
	
	def self.from_workout_exercises_by(workout)
		exercise_ids = workout.exercises
				where("workout_id = ?", workout)

	end
end
