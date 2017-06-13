class CausesController < ApplicationController
  
   
  def show
    cause_type = params[:cause]
    # find all opportunities for that cause
    @opportunities = Opportunity.where(cause: cause_type)
  end

end

