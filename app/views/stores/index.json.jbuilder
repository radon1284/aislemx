json.array!(@stores) do |store|
  json.extract! store, :id, :store_name, :store_image, :store_location
  json.url store_url(store, format: :json)
end
