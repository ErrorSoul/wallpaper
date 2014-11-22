class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.string :title
      t.string :asset
      t.decimal :price, precision: 8, scale: 2
      t.decimal :weight, precision: 8, scale: 2
      t.decimal :consumption, precision: 8, scale: 2
      t.string :vendor
      t.references :country, index: true
      t.references :clue_type, index: true
      t.string :marking

      t.timestamps
    end
  end
end
