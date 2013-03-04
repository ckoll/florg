class StaticPagesController < ApplicationController
  def home
    homeportalslugs = [ "cut-the-rope", "vanessa-hudgens", "my-little-pony", "the-hunger-games" ,
    "one-direction", "the-hobbit", "warm-bodies", "twilight-fanfics" ]
    
    @homeportals = homeportalslugs.map { |t| 
        Portal.find_by_slug(t)
    }
    
    @users = User.all

    @portals=Portal.all
    @portals_celebs = Portal.where(:directory => "celebs")
    @portals_tv = Portal.where(:directory => "tv")
    @portals_movies = Portal.where(:directory => "movies")
    @portals_games = Portal.where(:directory => "games")

    @portals_characters = Portal.where(:directory => "characters")
    @portals_fanfics = Portal.where(:directory => "fanfics")
    @portals_books = Portal.where(:directory => "books")
    @portals_other = Portal.where(:directory => "other")


  end

  def help
  end

  def about
  end

  def contact
  end
end
