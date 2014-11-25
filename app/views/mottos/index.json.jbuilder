json.array!(@mottos) do |motto|
  json.extract! motto, :id, :motto, :mean, :surname_id
  json.url motto_url(motto, format: :json)
end
