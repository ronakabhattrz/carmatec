class Product < ApplicationRecord
	has_many :product_variants
	has_one :sku
end
