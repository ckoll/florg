class PortalsController < ApplicationController
	def show
		@portal = Portal.find_by_slug(params[:slug])
	end
end
