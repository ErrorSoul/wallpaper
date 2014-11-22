class CreateClueTypes < ActiveRecord::Migration
  def change
    create_table :clue_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
