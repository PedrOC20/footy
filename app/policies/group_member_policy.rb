class GroupMemberPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.includes(:group).where(user: user)
    end
  end
end
