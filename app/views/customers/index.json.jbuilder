json.array!(@customers) do |customer|
  json.extract! customer, :id, :Number, :Name1, :Name2, :Street, :HoNumber, :ZipCode, :City, :Country
  json.url customer_url(customer, format: :json)
end
