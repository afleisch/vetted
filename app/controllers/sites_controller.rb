class SitesController < ApplicationController
  def index
    if user_signed_in?
      redirect_to profile_path(current_user.id)
    else
      redirect_to new_user_registration_path
    end

  end
end
