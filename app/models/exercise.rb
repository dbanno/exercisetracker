class Exercise < ActiveRecord::Base
	include ApplicationHelper
	has_many :weight_logs, dependent: :destroy
	belongs_to :user

	has_many :workout_exercises
	has_many :workouts, :through => :workout_exercises
	
	validates :name, presence: true, length: { maximum: 100 }
	validates_uniqueness_of :name, :scope => :user_id, :case_sensitive => false
	default_scope -> { order('name ASC') }
	
	def liftsToday(timezone)
		now = Time.now.in_time_zone(timezone)
		today =  now.month.to_s + "/" +now.day.to_s + "/" + now.year.to_s
		Exercise.find(id).weight_logs.where(["created_at >= ?", now.to_s]).count
	end
	
end
