json.array!(@jackets) do |jacket|
  json.extract! jacket, :id, :name, :last_worn, :date_acquired, :price
  json.url jacket_url(jacket, format: :json)
end
