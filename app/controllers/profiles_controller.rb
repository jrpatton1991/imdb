class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @profile = current_user.profile
    if @profile.blank?
      redirect_to new_profile_path
    end
  end

  def new
    @profile = current_user.build_profile

  end

  def edit
  end
end
