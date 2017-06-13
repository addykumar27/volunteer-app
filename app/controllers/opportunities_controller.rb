class OpportunitiesController < ApplicationController
	def index
    @opportunities = Opportunity.all
  end

  def show
    set_opp
  end

  def destroy 

#   	@Opportunity = Opportunity.find(params[:id]
#   	@user = User.find(params[:user_id])
#     if @user == current_user
#       @Opportunity.destroy
#       redirect_to @user
#       flash[:notice] = "Deleted!"
#     else
#       redirect_to @user
#       flash[:notice] = "Sorry, you can only delete your own comments!"
#     end
   end

private

  def set_opp
    @opportunity = Opportunity.find(params[:id])
   end

def set_user
    @user = User.find(params[:user_id])
  end
 end