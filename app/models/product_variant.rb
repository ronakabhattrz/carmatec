class ProductVariant < ApplicationRecord
  belongs_to :product
  has_many :product_variant_options
end
