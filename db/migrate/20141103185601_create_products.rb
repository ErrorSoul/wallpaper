class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.decimal :weight, precision: 8, scale: 2
      t.decimal :height, precision: 8, scale: 2
      t.string :marking

      t.timestamps
    end
  end
end
