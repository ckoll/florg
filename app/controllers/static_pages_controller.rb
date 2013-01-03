class StaticPagesController < ApplicationController
  def home
    @homeportalslugs = [ 1, 2 , 3 , 4 , 5 , 6 , 7, 8 ]
    
    @homeportals = @homeportalslugs.map { |t| 
        Portal.find_by_id(t)
    }
    
  end

  def help
  end

  def about
  end

  def contact
  end
end
