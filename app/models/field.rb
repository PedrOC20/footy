class Field < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true
  validates :field_size, presence: true, inclusion: { in: [3, 5, 7, 11] }
  validates :field_type, presence: true, inclusion: { in: ["Grass", "Synthetic", "Concrete", "Wood", "Sand"] }
  validates :parking, inclusion: { in: [true, false] }
  validates :parking, exclusion: { in: [nil] }
  validates :locker_room, inclusion: { in: [true, false] }
  validates :locker_room, exclusion: { in: [nil] }
  validates :indoor, inclusion: { in: [true, false] }
  validates :indoor, exclusion: { in: [nil] }
  belongs_to :user
end
