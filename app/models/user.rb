class User < ApplicationRecord
  # Includes
  include Clearance::User

  # Associations
  has_many :shouts, dependent: :destroy
  has_many :likes
  has_many :liked_shouts, through: :likes, source: :shout
  
  has_many :followships, foreign_key: :follower_id
  has_many :followed_users, through: :followships

  # Validations
  validates :username, presence: true, uniqueness: true
  
  # Delegations
  
  # Callbacks
  
  # Scopes
  default_scope { order(created_at: :desc) }
  
  # Class Methods

  # Instance Methods
  def follow(user)
    followed_users << user
  end

  def unfollow(user)
    followed_users.destroy(user)
  end

  def following?(user)
    followed_user_ids.include?user.id
  end

  def like(shout)
    liked_shouts << shout
  end

  def dislike(shout)
    liked_shouts.destroy(shout)
  end

  def liked?(shout)
    liked_shout_ids.include?shout.id
  end
  

  # Private Methods
end