json.array!(@attractions) do |attraction|
  json.extract! attraction, :id, :name, :description, :capacity, :park_id, :status
  json.url attraction_url(attraction, format: :json)
end
