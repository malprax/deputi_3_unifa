json.array!(@alumnus) do |alumnu|
  json.extract! alumnu, :id, :name, :address, :date_of_birth, :place_of_birth, :religion, :gender, :faculty, :sub_faculty
  json.url alumnu_url(alumnu, format: :json)
end
