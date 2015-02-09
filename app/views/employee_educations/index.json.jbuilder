json.array!(@employee_educations) do |employee_education|
  json.extract! employee_education, :id, :employee_id, :education_id
  json.url employee_education_url(employee_education, format: :json)
end
