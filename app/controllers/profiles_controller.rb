class ProfilesController < ApplicationController
  def show
    id = current_user.id
    @profile = User.find(id)
    @profile_things = Thing.where(user_id: current_user.id)
    respond_to do |format|
      format.html
      format.json {render :json => @profile_things}
    end
  end


end
