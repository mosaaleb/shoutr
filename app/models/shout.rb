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
  
  # Class Methods

  # Instance Methods

  # Private Methods
  
end
