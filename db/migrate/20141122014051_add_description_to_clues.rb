class AddDescriptionToClues < ActiveRecord::Migration
  def change
    add_column :clues, :description, :text
  end
end
