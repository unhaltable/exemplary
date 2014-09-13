json.array!(@sections) do |section|
  json.extract! section, :id, :content
  json.url section_url(section, format: :json)
end
