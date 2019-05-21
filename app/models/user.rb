class User < ApplicationRecord
  include Clearance::User
  # associations
  has_many :shouts, dependent: :destroy
  
  # validations  
  validates :username, presence: true, uniqueness: true
end
