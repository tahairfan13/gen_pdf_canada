json.extract! marketing_product, :id, :first_order_date, :first_ship_date, :availability_date, :product_description, :serving_description, :ingredients_description, :benefits_description, :user, :product, :created_at, :updated_at
json.url marketing_product_url(marketing_product, format: :json)