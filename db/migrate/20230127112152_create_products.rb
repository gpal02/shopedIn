class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_category
      t.string :product_description
      t.string :product_dimention
      t.decimal :product_price
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
