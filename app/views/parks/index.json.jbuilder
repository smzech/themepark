json.array!(@parks) do |park|
  json.extract! park, :id, :name, :description, :hours, :status
  json.url park_url(park, format: :json)
end
