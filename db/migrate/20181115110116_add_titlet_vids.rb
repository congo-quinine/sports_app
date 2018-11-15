class AddTitletVids < ActiveRecord::Migration[5.2]
  def change
    add_column :you_tubes, :title, :string
  end
end
