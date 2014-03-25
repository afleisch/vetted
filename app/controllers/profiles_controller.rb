class ProfilesController < ApplicationController
  def show
    id = current_user.id
    @profile = User.find(id)
    profile_things = Thing.where(user_id: current_user.id)
    @categories = []
    profile_things.each do |thing|
    @categories=@categories.push(thing.category).uniq
    end
    @locations = []
    profile_things.each do |thing|
    @locations=@locations.push(thing.city).uniq
    end
    respond_to do |format|
      format.html
      format.json {render :json => @profile_things}
    end
  end


end
