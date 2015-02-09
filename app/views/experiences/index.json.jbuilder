json.array!(@experiences) do |experience|
  json.extract! experience, :id, :title, :comany, :startdate, :enddate, :field, :employee_id
  json.url experience_url(experience, format: :json)
end
