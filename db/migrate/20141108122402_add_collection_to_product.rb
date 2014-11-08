class AddCollectionToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :collection, index: true
  end
end
