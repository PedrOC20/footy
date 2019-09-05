class Group < ApplicationRecord
  belongs_to :field
  has_many :group_members
  enum status: [:Pending, :Booked, :Full]

  def self.between_dates(start_time, end_time, date)
    condition = '(start_time <= :start_time_param and end_time > :start_time_param) ' \
                'or (start_time < :end_time_param and end_time >= :end_time_param)' \
                'or (start_time > :start_time_param and end_time < :end_time_param)' \
                'and (date = :date_param)'

    where(condition, start_time_param: Time.zone.parse(start_time),
                      end_time_param: Time.zone.parse(end_time),
                      date_param: Time.zone.parse(date))
  end

  def self.search(location, start_time, end_time, date)
    full_ids = Group.between_dates(start_time, end_time, date).where(status: :Full).pluck(:id)
    not_full_ids = Group.between_dates(start_time, end_time, date).where.not(status: :Full).pluck(:id)
    near_fields_ids = Field.near(location, 20, { order: "" }).pluck(:id)
    Group.where(id: not_full_ids, field_id: near_fields_ids)
         .where.not(id: full_ids)
  end
end
