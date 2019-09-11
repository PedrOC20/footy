class ChatRoomsController < ApplicationController
  before_action :fetch_group

  before_action :check_if_user_is_joined
  def show
    @chat_room = ChatRoom.includes(messages: :group_member).find(params[:id])
    authorize @chat_room
    @chat_room.messages.joins(:group_member)
                       .where("group_members.user_id != ?", current_user.id).update_all(read: true)
  end

  private

  def fetch_group
    @group = Group.find(params[:group_id])
  end

  def check_if_user_is_joined
    redirect_to group_path(@group), alert: "You are not in this group!" unless @group.users.include?(current_user)
  end
end
