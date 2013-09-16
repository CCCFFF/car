json.array!(@autos) do |auto|
  json.extract! auto, :user_id, :year, :make, :model, :category, :car_company_id
  json.url auto_url(auto, format: :json)
end
