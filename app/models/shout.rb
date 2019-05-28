class Shout < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :content, polymorphic: true
  # validations
  validates :user, presence: true

  # delegations
  delegate :username, to: :user
end
