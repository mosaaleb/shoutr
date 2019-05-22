class ShoutsController < ApplicationController
  def show
    @shout = Shout.find(params[:id])
  end

  def create
    shout = current_user.shouts.create shouts_params
    redirect_to root_path, redirect_options_for(shout)
  end

  private

  def shouts_params
    params.require(:shout).permit(:body)
  end

  def redirect_options_for(shout)
    if shout.persisted?
      { notice: 'Shout published' }
    else
      { alert: 'Could not shout' }
    end
  end
end