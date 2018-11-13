class AddSportId < ActiveRecord::Migration[5.2]
  def change
    add_column :you_tubes, :sports_id, :integer
  end
end
