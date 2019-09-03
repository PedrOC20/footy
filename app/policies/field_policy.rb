class FieldPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    user_is_owner?
  end

  def show?
    user_is_owner?
  end

  def new?
    user_is_owner?
  end

  def create?
    new?
  end

  def edit?
    user_is_owner?
  end

  def update?
    edit?
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_is_owner?
    user.Owner?
  end
end
