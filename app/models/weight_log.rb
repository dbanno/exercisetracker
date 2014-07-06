class WeightLog < ActiveRecord::Base
	belongs_to :exercise
	belongs_to :user, class_name: "User"
	default_scope -> { order('created_at DESC') }
	validates :user_id, presence: true
	

end
