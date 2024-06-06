class User < ApplicationRecord
  validates :email, uniqueness: { scope: %i[event_id state ] }, db_uniqueness: true
end
