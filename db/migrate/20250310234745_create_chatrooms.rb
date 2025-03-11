class CreateChatrooms < ActiveRecord::Migration[8.0]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.boolean :is_private
      t.string :image_url, limit: 1000

      t.timestamps
    end
  end
end
