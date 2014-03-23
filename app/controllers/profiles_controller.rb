class ProfilesController < ApplicationController
  def show
    id = current_user.id
    @profile = User.find(id)
  end


end
