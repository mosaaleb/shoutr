class User < ApplicationRecord
  include Clearance::User
  # associations
  has_many :shouts, dependent: :destroy
  
  # validations  
  validates :username, presence: true, uniqueness: true

  # scope
  default_scope { order(created_at: :desc) }

  # delegation
end
