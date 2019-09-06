class GroupMemberPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.includes(:group).where(user: user)
    end
  end

  def update?
    true
  end
end
