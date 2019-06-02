class FollowingsController < ApplicationController
  def index
    @user = find_user
    @followed_users = @user.followed_users 
  end

  private 

  def find_user
    @_user ||= User.find(params[:user_id])
  end
end
