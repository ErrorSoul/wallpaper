class AddConsumptionToClues < ActiveRecord::Migration
  def change
    add_column :clues, :consumption, :string
  end
end
