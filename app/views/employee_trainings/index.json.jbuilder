json.array!(@employee_trainings) do |employee_training|
  json.extract! employee_training, :id, :employee_id, :training_id, :tdate
  json.url employee_training_url(employee_training, format: :json)
end
