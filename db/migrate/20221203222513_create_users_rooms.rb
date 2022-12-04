class CreateUsersRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :users_rooms do |t|
      t.references :message_room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
