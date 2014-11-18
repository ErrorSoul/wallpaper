class AddTextToType < ActiveRecord::Migration
  def change
    add_column :types, :text, :text
  end
end
