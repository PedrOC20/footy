class GroupMembersController < ApplicationController
  before_action :check_if_player

  def index
    @group_members = policy_scope(GroupMember)

    @group_members_upcoming = []
    @group_members_past = []
    @group_members.each do |gp|
      if gp.group.end_date_time > DateTime.now
        @group_members_upcoming << gp
      else
        @group_members_past << gp
      end
    end
  end

  def update
    @group_member = GroupMember.find(params[:id])
    @group_member.field_review_rating = params[:group_member][:field_review_rating]
    @group_member.field_review_description = params[:group_member][:field_review_description]
    authorize @group_member

    @group_member.save
    redirect_to group_path(@group_member.group)
  end

  private

  def check_if_player
    redirect_to fields_path, alert: "Action not allowed!" unless current_user.Player?
  end
end
