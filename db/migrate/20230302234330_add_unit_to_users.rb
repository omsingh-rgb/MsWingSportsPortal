class AddUnitToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :unit, null: false, foreign_key: true
  end
end
