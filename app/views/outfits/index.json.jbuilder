json.array!(@outfits) do |outfit|
  json.extract! outfit, :id, :name, :description, :last_worn, :rating
  json.url outfit_url(outfit, format: :json)
end
