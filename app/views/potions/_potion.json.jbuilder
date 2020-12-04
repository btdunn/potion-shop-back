json.extract! potion, :id, :name, :description, :price, :created_at, :updated_at
json.url potion_url(potion, format: :json)
