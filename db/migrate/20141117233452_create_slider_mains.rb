class CreateSliderMains < ActiveRecord::Migration
  def change
    create_table :slider_mains do |t|
      t.text :text
      t.string :asset

  
    end
  end
end
