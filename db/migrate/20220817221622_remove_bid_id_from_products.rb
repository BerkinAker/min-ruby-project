class RemoveBidIdFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :bid_id, :integer
  end
end
