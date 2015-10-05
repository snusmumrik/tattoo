json.array!(@clients) do |client|
  json.extract! client, :id, :name, :url, :address, :tel, :banner_url, :email, :commition, :condition
  json.url client_url(client, format: :json)
end
