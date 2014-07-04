json.array!(@weight_logs) do |weight_log|
  json.extract! weight_log, :id, :exercise, :weight, :reps
  json.url weight_log_url(weight_log, format: :json)
end
