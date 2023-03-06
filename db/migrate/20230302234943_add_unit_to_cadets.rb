class AddUnitToCadets < ActiveRecord::Migration[7.0]
  def change
    add_reference :cadets, :unit, null: false, foreign_key: true
  end
end
