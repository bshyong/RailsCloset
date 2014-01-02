json.array!(@ties) do |ty|
  json.extract! ty, :id, :name, :last_worn, :date_acquired, :price
  json.url ty_url(ty, format: :json)
end
