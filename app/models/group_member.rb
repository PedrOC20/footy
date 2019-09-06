class GroupMember < ApplicationRecord
  belongs_to :user
  belongs_to :group

  def can_add_review?(current_user)
    group.date <= DateTime.now && field_review_rating.blank? && user == current_user
  end
end
