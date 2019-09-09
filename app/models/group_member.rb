class GroupMember < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :messages, dependent: :destroy

  def can_add_review?(current_user)
    group.date <= DateTime.now && field_review_rating.blank? && user == current_user
  end
end
