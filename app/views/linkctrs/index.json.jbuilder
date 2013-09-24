json.array!(@linkctrs) do |linkctr|
  json.extract! linkctr, :name, :urlLink, :detail
  json.url linkctr_url(linkctr, format: :json)
end
