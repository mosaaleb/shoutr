class User < ApplicationRecord
  # Includes
  include Clearance::User

  # Associations
  has_many :shouts, dependent: :destroy
  has_many :likes
  has_many :liked_shouts, through: :likes, source: :shout
  
  # Validations
  validates :username, presence: true, uniqueness: true
  
  # Delegations
  
  # Callbacks
  
  # Scopes
  default_scope { order(created_at: :desc) }
  
  # Class Methods

  # Instance Methods
  def like(shout)
    liked_shouts << shout
  end

  def dislike(shout)
    liked_shouts.destroy(shout)
  end

  def liked?(shout)
    liked_shout_ids.include?shout.id
  end

  def to_param
    username
  end
  # Private Methods
end
