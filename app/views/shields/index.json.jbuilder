json.array!(@shields) do |shield|
  json.extract! shield, :id, :shield, :origin, :description, :surname_id
  json.url shield_url(shield, format: :json)
end
