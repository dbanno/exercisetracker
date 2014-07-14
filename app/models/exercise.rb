class Exercise < ActiveRecord::Base
	has_many :weight_logs, dependent: :destroy
	
	belongs_to :user

	has_many :workout_exercises
	has_many :workouts, :through => :workout_exercises
	
	validates :name, presence: true, length: { maximum: 100 },
		uniqueness: { case_sensitive: false }
	default_scope -> { order('name ASC') }
	
	def self.from_workout_exercises_by(workout)
		exercise_ids = workout.exercises
				where("workout_id = ?", workout)

	end
end
