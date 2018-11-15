class AddVidsDate < ActiveRecord::Migration[5.2]
  def change
    add_column :you_tubes, :vid_date, :string

  end
end
