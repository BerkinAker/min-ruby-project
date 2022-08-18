class AddBidToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :bid, foreign_key: true
  end
end
