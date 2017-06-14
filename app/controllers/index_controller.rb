class IndexController < ApplicationController

  def index
  	@opportunities = Opportunity.all

  end

  def about
    
  end
end