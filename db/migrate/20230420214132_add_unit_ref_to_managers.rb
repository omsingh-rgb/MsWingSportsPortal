class AddUnitRefToManagers < ActiveRecord::Migration[7.0]
  def change
    add_reference :managers, :unit, null: false, foreign_key: true
  end
end
