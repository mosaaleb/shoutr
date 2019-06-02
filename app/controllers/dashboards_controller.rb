class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
    @shouts = current_user.newsfeed_shouts
  end
end