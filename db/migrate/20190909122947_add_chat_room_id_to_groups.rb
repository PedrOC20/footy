class AddChatRoomIdToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :chat_room, foreign_key: true
  end
end
