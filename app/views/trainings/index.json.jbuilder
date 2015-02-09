json.array!(@trainings) do |training|
  json.extract! training, :id, :name
  json.url training_url(training, format: :json)
end
