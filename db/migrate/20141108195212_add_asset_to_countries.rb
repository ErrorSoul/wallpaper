class AddAssetToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :asset, :string
  end
end
