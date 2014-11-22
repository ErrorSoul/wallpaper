class RemoveConsumptionFromClues < ActiveRecord::Migration
  def change
    remove_column :clues, :consumption, :decimal, precision: 8, scale: 2
  end
end
