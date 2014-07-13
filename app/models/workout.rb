class Workout < ActiveRecord::Base

    has_many :workout_exercises
	has_many :exercises, :through => :workout_exercises
	
	belongs_to :user
	accepts_nested_attributes_for :workout_exercises

	validates :name, presence: true, length: { maximum: 100 }
	
	

end
