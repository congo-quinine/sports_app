class CreateYouTubes < ActiveRecord::Migration[5.2]
  def change
    create_table :you_tubes do |t|
      t.integer :user_id
      t.string :video_url
      t.timestamps
    end
  end
end
