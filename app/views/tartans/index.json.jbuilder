json.array!(@tartans) do |tartan|
  json.extract! tartan, :id, :tartan, :tartext, :surname_id
  json.url tartan_url(tartan, format: :json)
end
