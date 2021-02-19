class RoomJoinLog < ApplicationRecord
  validates :room_id, :username, presence: true
  belongs_to :room
  scope :joined, -> { where(action: 'join').order('created_at asc') }
end
