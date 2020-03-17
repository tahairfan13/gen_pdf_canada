json.extract! product, :id, :name, :type, :parent_gtin, :gtin, :created_at, :updated_at
json.url product_url(product, format: :json)
