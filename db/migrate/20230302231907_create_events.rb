class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :max_entries
      t.string :result_type

      t.timestamps
    end
  end
end
