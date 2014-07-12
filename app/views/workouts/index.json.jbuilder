json.array!(@workouts) do |workout|
  json.extract! workout, :id, :user_id, :description
  json.url workout_url(workout, format: :json)
end
