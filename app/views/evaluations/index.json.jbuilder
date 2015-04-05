json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :employee_id, :rater_id
  json.url evaluation_url(evaluation, format: :json)
end
