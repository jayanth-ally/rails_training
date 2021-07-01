json.extract! store, :id, :name, :description, :year, :rating, :price, :created_at, :updated_at
json.url store_url(store, format: :json)
