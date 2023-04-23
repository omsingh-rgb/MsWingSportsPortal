class AddGenderToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :gender, :string
  end
end
