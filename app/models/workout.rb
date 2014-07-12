class Workout < ActiveRecord::Base
	has_many :exercises
	belongs_to :user
	
	validates :name, presence: true, length: { maximum: 100 }
end
