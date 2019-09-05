class GroupMember < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :user, uniqueness: true
end
