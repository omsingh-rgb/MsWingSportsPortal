class CreateCadets < ActiveRecord::Migration[7.0]
  def change
    create_table :cadets do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :cadet_id

      t.timestamps
    end
  end
end
