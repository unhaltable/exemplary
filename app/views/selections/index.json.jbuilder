json.array!(@selections) do |selection|
  json.extract! selection, :id, :x, :y, :x2, :y2
  json.url selection_url(selection, format: :json)
end
