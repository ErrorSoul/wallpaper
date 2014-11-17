class CreatePaints < ActiveRecord::Migration
  def change
    create_table :paints do |t|
      t.string :name

      t.timestamps
    end
  end
end
