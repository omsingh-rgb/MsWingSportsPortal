class CreateETypes < ActiveRecord::Migration[7.0]
  def change
    create_table :e_types do |t|
      t.string :name
      t.integer :per_cadet_limit

      t.timestamps
    end
  end
end
