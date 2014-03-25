class ProfilesController < ApplicationController
  def show
    @things = Thing.where(user_id: current_user.id)
    
    @categories = []
    @things.each do |thing|
      @categories=@categories.push(thing.category).uniq
    end

    @locations = []
    @things.each do |thing|
      @locations=@locations.push(thing.city).uniq
    end

    respond_to do |format|
      format.html
      format.json {render :json => @things}
    end
  end


end
