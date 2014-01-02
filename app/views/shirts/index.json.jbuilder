json.array!(@shirts) do |shirt|
  json.extract! shirt, :id, :name, :last_worn, :date_acquired, :price
  json.url shirt_url(shirt, format: :json)
end
