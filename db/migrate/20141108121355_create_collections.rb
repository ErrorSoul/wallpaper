class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.belongs_to :label, index: true

      t.timestamps
    end
  end
end
