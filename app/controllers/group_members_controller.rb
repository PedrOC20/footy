class GroupMembersController < ApplicationController
  def index
    @group_members = policy_scope(GroupMember)
  end

  def update
    @group_member = GroupMember.find(params[:id])
    @group_member.field_review_rating = params[:group_member][:field_review_rating]
    @group_member.field_review_description = params[:group_member][:field_review_description]
    authorize @group_member
    raise
    if @group_member.save
      redirect_to my_bookings_path
    else
      render 'my_bookings'
    end
  end
end
