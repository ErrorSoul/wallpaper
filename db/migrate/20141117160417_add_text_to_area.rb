class AddTextToArea < ActiveRecord::Migration
  def change
    add_column :areas, :text, :text
  end
end
