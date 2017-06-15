class FavoriteOpportunitiesController < ApplicationController
  before_action :set_opportunity
  
  def create
    if Favorite.create(favorited: @opportunity, user: current_user)
      redirect_to @opportunity, notice: ' has been favorited'
    else
      redirect_to @opportunity, alert: 'Something went wrong...*sad panda*'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @opportunity.id, user_id: current_user.id).first.destroy
    redirect_to @opportunity, notice: 'This opportunity is no longer in favorites'
  end
  
  private
  
  def set_opportunity
    @opportunity = Opportunity.find(params[:opportunity_id] || params[:id])
  end
end