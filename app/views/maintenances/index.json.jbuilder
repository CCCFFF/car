json.array!(@maintenances) do |maintenance|
  json.extract! maintenance, :maintenance_category_id, :date, :cost, :mileage
  json.url maintenance_url(maintenance, format: :json)
end
