class AddAssetToCollection < ActiveRecord::Migration
  def change
    add_column :collections, :asset, :string
  end
end
