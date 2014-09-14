json.array!(@courses) do |course|
  json.extract! course, :id, :name, :coursecode
  json.url course_url(course, format: :json)
end
