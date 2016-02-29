json.array!(@scholarship_registrations) do |scholarship_registration|
  json.extract! scholarship_registration, :id, :name, :address, :date_of_birth, :religion
  json.url scholarship_registration_url(scholarship_registration, format: :json)
end
