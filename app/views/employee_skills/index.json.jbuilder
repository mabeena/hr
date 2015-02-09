json.array!(@employee_skills) do |employee_skill|
  json.extract! employee_skill, :id, :employee_id, :skill_id
  json.url employee_skill_url(employee_skill, format: :json)
end
