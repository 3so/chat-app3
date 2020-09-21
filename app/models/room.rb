class Room < ApplicationRecord
  has_many: :users, through: :room_users
  has_many: :comments
  has_many: :room_users
end
