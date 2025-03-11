class CreateChatroommembers < ActiveRecord::Migration[8.0]
  def change
    create_table :chatroommembers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chatroom, null: false, foreign_key: true
      t.string :role, default: "member"
      t.datetime :joined_at, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :left_at, default: nil

      t.timestamps
    end
  end
end
