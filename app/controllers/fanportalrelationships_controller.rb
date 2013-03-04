class FanportalrelationshipsController < ApplicationController
 before_filter :signed_in_user

  def create
    @portal = Portal.find(params[:fanportalrelationship][:portal_id])
    current_user.becomefan!(@portal)
    redirect_to @portal.portal_slugpath
  end

  def destroy
    @portal = Fanportalrelationship.find(params[:id]).portal
    current_user.unfan!(@portal)
    redirect_to @portal.portal_slugpath
  end
end
