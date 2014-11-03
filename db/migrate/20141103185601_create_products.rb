class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.decimal :weight
      t.decimal :height
      t.string :marking

      t.timestamps
    end
  end
end
