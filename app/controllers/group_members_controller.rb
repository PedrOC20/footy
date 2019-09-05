class GroupMembersController < ApplicationController
  def index
    @group_members = policy_scope(GroupMember)
  end
end
