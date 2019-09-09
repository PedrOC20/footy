class Field < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true
  validates :field_size, presence: true, inclusion: { in: [3, 5, 7, 11] }
  validates :field_type, presence: true, inclusion: { in: ["Grass", "Synthetic", "Concrete", "Wood"] }
  validates :parking, inclusion: { in: [true, false] }
  validates :parking, exclusion: { in: [nil] }
  validates :locker_room, inclusion: { in: [true, false] }
  validates :locker_room, exclusion: { in: [nil] }
  validates :indoor, inclusion: { in: [true, false] }
  validates :indoor, exclusion: { in: [nil] }
  belongs_to :user
  has_many :groups
  has_many :group_members, through: :groups
  mount_uploader :photo, PhotoUploader

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  scope :parking, -> { where(parking: true) }
  scope :locker_room, -> { where(locker_room: true) }
  scope :indoor, -> { where(indoor: true) }
  scope :field_size, ->(field_size) { where("field_size = ?", field_size) }
  scope :field_type, ->(field_type) { where("field_type = ?", field_type) }

  def self.search(location, start_time, end_time, date)
    booked_field_ids = Group.between_dates(start_time, end_time, date).where(status: :Booked).pluck(:field_id)
    pending_field_ids = Group.between_dates(start_time, end_time, date).where(status: :Pending).pluck(:field_id)
    near(location, 20)
      .where(id: pending_field_ids)
      .where.not(id: booked_field_ids)
  end

  def self.by_filter(parking = nil, indoor = nil, locker_room = nil, field_size = nil, field_type = nil)
    return where(parking: parking) if parking
    return where(parking: parking, indoor: indoor) if parking && indoor
    return where(parking: parking, indoor: indoor, locker_room: locker_room) if parking && indoor && locker_room
    return where(parking: parking, indoor: indoor, locker_room: locker_room, field_size: field_size) if parking && indoor && locker_room && field_size
    return where(parking: parking, indoor: indoor, locker_room: locker_room, field_size: field_size, field_type: field_type) if parking && indoor && locker_room && field_size && field_type
    return where(parking: parking, indoor: indoor, locker_room: locker_room, field_type: field_type) if parking && indoor && locker_room && field_type
    return where(parking: parking, locker_room: locker_room) if parking && locker_room
    return where(parking: parking, locker_room: locker_room, field_size: field_size) if parking && locker_room && field_size
    return where(parking: parking, locker_room: locker_room, field_size: field_size, field_type: field_type) if parking && locker_room && field_size && field_type
    return where(parking: parking, locker_room: locker_room, field_type: field_type) if parking && locker_room && field_type
    return where(indoor: indoor) if indoor
    return where(indoor: indoor, locker_room: locker_room) if indoor && locker_room
    return where(indoor: indoor, locker_room: locker_room, field_size: field_size) if indoor && locker_room && field_size
    return where(indoor: indoor, locker_room: locker_room, field_size: field_size, field_type: field_type) if indoor && locker_room && field_size && field_type
    return where(indoor: indoor, locker_room: locker_room, field_type: field_type) if indoor && locker_room && field_type
    return where(locker_room: locker_room) if locker_room
    return where(locker_room: locker_room, field_size: field_size) if locker_room && field_size
    return where(locker_room: locker_room, field_size: field_size, field_type: field_type) if locker_room && field_size && field_type
    return where(locker_room: locker_room, field_type: field_type) if locker_room && field_type
    return where(field_size: field_size) if field_size
    return where(field_size: field_size, field_type: field_type) if field_size && field_type
    return where(field_type: field_type) if field_type

    all
  end
end
