class Shout < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates :body, presence: true, length: { in: 1..144 }
  validates :user, presence: true

  # delegations
  delegate :username, to: :user
end
