class LikesController < ApplicationController
  
  def create
    current_user.like(shout)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.dislike(shout)
    redirect_back(fallback_location: root_path)
  end

  private

  def shout
    @_shout ||= Shout.find(params[:id])
  end

end
