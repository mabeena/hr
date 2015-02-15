json.array!(@educations) do |education|
  json.extract! education, :id, :degree, :concentration
  json.url education_url(education, format: :json)
end
