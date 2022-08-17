class AddUnitToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :unit, foreign_key: true
  end
end
