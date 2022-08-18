class RemoveUnitIdFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :unit_id, :integer
  end
end
