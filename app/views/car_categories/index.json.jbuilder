json.array!(@car_categories) do |car_category|
  json.extract! car_category, :name
  json.url car_category_url(car_category, format: :json)
end
