class CausesController < ApplicationController
  
  def index
  	render "index"
  end
   
  def show
    cause_type = params[:cause]
    cause_type.gsub! '%20', ' '
    # find all opportunities for that cause
    @opportunities = Opportunity.where(cause: cause_type)
    p @opportunities
  end

end

