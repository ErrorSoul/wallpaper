class AddAssetToLabel < ActiveRecord::Migration
  def change
    add_column :labels, :asset, :string
  end
end
