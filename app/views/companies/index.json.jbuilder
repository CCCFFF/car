json.array!(@companies) do |company|
  json.extract! company, :name, :city, :state, :specialty
  json.url company_url(company, format: :json)
end
