json.array!(@pants) do |pant|
  json.extract! pant, :id, :name, :last_worn, :date_acquired, :price
  json.url pant_url(pant, format: :json)
end
