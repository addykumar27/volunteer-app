class UseroppController < ApplicationController
def index
    @user = User.find(params[:user_id])
    @opportunities = @user.opportunities# so we type less in the view
  	end

	def create
    	@opportunity = Opportunity.find(params[:id])
    	@opportunity.users.push(current_user)  # no error handling currently
    	redirect_to current_user
  	end

end