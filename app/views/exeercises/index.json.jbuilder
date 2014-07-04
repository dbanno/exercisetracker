json.array!(@exeercises) do |exeercise|
  json.extract! exeercise, :id, :name
  json.url exeercise_url(exeercise, format: :json)
end
