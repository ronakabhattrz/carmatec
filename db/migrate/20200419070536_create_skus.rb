class CreateSkus < ActiveRecord::Migration[5.2]
  def change
    create_table :skus do |t|
      t.references :product, foreign_key: true
      t.string :sku
      t.string :price

      t.timestamps
    end
  end
end
