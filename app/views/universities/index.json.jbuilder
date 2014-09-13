json.array!(@universities) do |university|
  json.extract! university, :id, :name, :abbreviation
  json.url university_url(university, format: :json)
end
