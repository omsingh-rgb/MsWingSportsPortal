class AddMaxAgeToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :max_age, :integer
  end
end
