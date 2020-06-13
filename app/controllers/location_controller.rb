class LocationController < ApplicationController
  def add
    current_user.user_locations.create(address: params[:user][:address])
    @user_locations = current_user.user_locations
  end

  def share
    current_user.shared_locations.create(shared_with: User.find(params[:user][:user_id]),  user_location: UserLocation.find(params[:user][:user_locations_id]))
  end

  def get_form
    @user = User.find(params[:id])
    render partial: 'get_form', locals: { user: @user, user_location_id: params[:user_location_id] }
  end

  def remove
    UserLocation.find(params[:id]).destroy
  end

  def remove_shared
    SharedLocation.find(params[:id]).destroy
  end

  def remove_shared_with_me
    SharedLocation.find(params[:id]).destroy
  end
end
