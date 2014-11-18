class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :product, polymorphic: true, index: true
      t.belongs_to :cart, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
