class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :role, presence: true
  validates :username, uniqueness: true, allow_blank: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
  validates :position, inclusion: { in: [nil, "Goalkeeper", "Defense", "Midfielder", "Forward"] }
  validates :foot, inclusion: { in: [nil, "Right", "Left"] }
  enum role: [:Player, :Owner, :Admin]
  mount_uploader :avatar, AvatarUploader
  has_many :fields
  has_many :group_members
  has_many :groups, through: :group_members
end
