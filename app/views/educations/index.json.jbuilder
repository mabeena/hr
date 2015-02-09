json.array!(@educations) do |education|
  json.extract! education, :id, :degree, :institution, :concentration, :edate, :completed
  json.url education_url(education, format: :json)
end
