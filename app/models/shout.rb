class Shout < ApplicationRecord
  # Includes
  
  # Associations
  belongs_to :user
  belongs_to :content, polymorphic: true
  
  # Validations
  validates :user, presence: true
  
  # Delegations
  delegate :username, to: :user
  
  # Callbacks

  # Scopes
  default_scope { order(created_at: :desc) }
  
  # Class Methods

  # Instance Methods

  # Private Methods
  
end
