class StaticPagesController < ApplicationController
  def home
  	 names = %w[Steffie Linh Anya Liam]
	 @result = names.shuffle.first
  end

  def help
  end
  
  def about
  end
 
  def contact
  end
  
end
