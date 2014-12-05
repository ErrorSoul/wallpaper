class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.text :text

      t.timestamps
    end
  end
end
