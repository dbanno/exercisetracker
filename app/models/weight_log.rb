class WeightLog < ActiveRecord::Base
	belongs_to :exercise
	default_scope -> { order('created_at DESC') }
	validates :weight, presence: true
	validates :reps, presence: true

end
