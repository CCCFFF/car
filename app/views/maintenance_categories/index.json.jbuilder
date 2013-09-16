json.array!(@maintenance_categories) do |maintenance_category|
  json.extract! maintenance_category, :name
  json.url maintenance_category_url(maintenance_category, format: :json)
end
