module ApplicationHelper


	def full_title(page_title)
		base_title = "Simple Exercise Tracker"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	
	def format_date(date)
		(date.in_time_zone(current_user.timezone)).strftime("%m/%d/%Y %I:%M %p")
	end
end
