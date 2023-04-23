class AddGenderToCadets < ActiveRecord::Migration[7.0]
  def change
    add_column :cadets, :gender, :string
  end
end
