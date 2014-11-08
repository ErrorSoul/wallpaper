class AddTypeToProduct < ActiveRecord::Migration
  def change
    add_column :products, :type, :reference
  end
end
