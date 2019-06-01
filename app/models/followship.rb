class Followship < ApplicationRecord
  belongs_to :followed_user, class_name: 'User'
  belongs_to :follower, class_name: 'User'
end
