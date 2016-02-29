json.array!(@scholarship_successes) do |scholarship_success|
  json.extract! scholarship_success, :id, :name, :address, :date_of_birth, :religion
  json.url scholarship_success_url(scholarship_success, format: :json)
end
