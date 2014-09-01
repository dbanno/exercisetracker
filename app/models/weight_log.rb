class WeightLog < ActiveRecord::Base
	belongs_to :exercise
	default_scope -> { order('created_at DESC') }
	validates :weight, presence: true
	validates :reps, presence: true, numericality: {greater_than: 0, only_integer: true }

	def oneRepMax
		(weight / (1.0278 - (0.0278 * reps))).round
	end
	
	def hasBaseWeight?
		Exercise.find(exercise_id).base_weight?
	end

	
	def weightBreakout
		@exercise = Exercise.find(exercise_id)
		if @exercise.base_weight?
		
			if (weight) <= @exercise.base_weight || ((weight - @exercise.base_weight) % 2.5) != 0
				return
			end
		
		
			weightLeft = (weight - @exercise.base_weight) / 2
			

			weights = ''
	
			while weightLeft != 0 do
				
				if weightLeft >= 45
					weights += '45'
					weightLeft -= 45
				elsif weightLeft >= 35
					weights += '35'
					weightLeft -= 35
				elsif weightLeft >= 25
					weights += '25'
					weightLeft -= 25
				elsif weightLeft >= 10
					weights += '10'
					weightLeft -= 10
				elsif weightLeft >= 5
					weights += '5'
					weightLeft -= 5
				elsif $weightLeft = 2.5
					weights += '2.5'
					weightLeft -= 2.5
				end
				if weightLeft != 0
					weights += ','
				end
			end
			return weights
		end
	end
end