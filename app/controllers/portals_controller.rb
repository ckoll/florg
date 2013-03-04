class PortalsController < ApplicationController
	def show
	
		if(params[:id].nil?) #only slug
			@portal = Portal.find_by_slug(params[:slug])
		else
			@portal = Portal.find(params[:id])
		end

	end

	def new
		@portal=Portal.new
	end


  def create
    @portal = Portal.new(params[:portal])

    if @portal.save
    	flash[:success] = @portal.slug
        redirect_to @portal.portal_slugpath
    else
      render 'new'
    end
  end

  def index
    setup_portal_variables
  end

  def tv
    setup_portal_variables
  end
  def celebs
    setup_portal_variables
  end
  def movies
    setup_portal_variables
  end
  def games
    setup_portal_variables
  end
  def characters
    setup_portal_variables
  end
  def fanfics
    setup_portal_variables
  end
  def books
    setup_portal_variables
  end
  def other
    setup_portal_variables
  end


  def setup_portal_variables
     @portals=Portal.all   
      @portals_tv = Portal.where(:directory => "tv")
      @portals_celebs = Portal.where(:directory => "celebs")
      @portals_movies = Portal.where(:directory => "movies")
      @portals_games = Portal.where(:directory => "games")
      @portals_characters = Portal.where(:directory => "characters")
      @portals_fanfics = Portal.where(:directory => "fanfics")
      @portals_books = Portal.where(:directory => "books")
      @portals_other = Portal.where(:directory => "other")
  end








end
