class ThingsController < ApplicationController


  def new
    @thing = Thing.new
  end

  def create
    new_thing = params.require(:thing).permit(:name, :category, :why, :street, :city, :state, :zip_code)
    new_thing[:user_id]= current_user.id 
    @thing = Thing.create(new_thing)
    #if the user has entered valid information go to their profile page after 
    #they add a thing
    if @thing.valid?
      redirect_to profile_path(current_user.id)
    #if user input in invalid, flash any errors that apply to the failed validation
    #then redirect to the new thing form
    else
      errors= @thing.errors.full_messages 
      errors.each do |msg|
        flash[:error] = msg
        redirect_to new_thing_path
      end
    end  
  end

  def show
    id = params[:id]
    @thing = Thing.find(id)
  end

  def edit
    id = params[:id]
    @thing = Thing.find(id)
    render :edit
  end

  def update
    thing_id = params[:id]
    @thing = current_user.things.find(thing_id)
    new_attributes = params.require(:thing).permit(:name, :category, :why, :street, :state, :zip_code)
    @thing.update_attributes(new_attributes)
    render :show
  end

  def destroy
    id = params[:id]
    thing = Thing.find(id)
    thing.destroy
    redirect_to profile_path(current_user.id)
  end

end
