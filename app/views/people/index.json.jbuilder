json.array!(@people) do |person|
  json.extract! person, :id, :name, :twitter, :facebook, :instagram, :vine
  json.url person_url(person, format: :json)
end
