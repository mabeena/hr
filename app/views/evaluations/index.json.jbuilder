json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :sdate, :edate, :commrunication, :attitude, :character, :potential, :performance, :employee_id, :position_id
  json.url evaluation_url(evaluation, format: :json)
end
