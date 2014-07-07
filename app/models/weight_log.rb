class WeightLog < ActiveRecord::Base
	belongs_to :exercise
	default_scope -> { order('created_at DESC') }
	validates :exercise_id, presence: true
	

end
