class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user
      user_groups_ids = current_user.group_members.pluck("group_members.group_id")
      @new_message = Message
                      .select("messages.content, messages.chat_room_id, group_members.group_id, users.first_name")
                      .joins(group_member: :user)
                      .where(read: false)
                      .where("users.id != ?", current_user.id)
                      .where("group_members.group_id IN (?)", user_groups_ids)
                      .last
    end
  end

  def profile
  end
end
