class UseroppController < ApplicationController
  before_action :require_ownership
  before_action :authenticate_user!

  # get '/users/:user_id/tips/new', to: 'usertips#new', as: 'new_user_tip'
  def new
    set_user
    @opportunity = opportunity.new
  end 

  # delete '/users/:user_id/tips/:id', to: 'usertips#destroy'
  def destroy
    set_opp
    set_user
    if @user == current_user
      @tip.destroy
      redirect_to @user
      flash[:notice] = "You have Deleted your favorites !"
    else
      redirect_to @user
      flash[:notice] = "You have not taken this opportunity out!"
    end
  end

  private

  def opp_params
    params.require(:opportunity).permit(:cause, :name, :location, :organization)
  end

  
 def set_org
   @organization = Organization.find(params[:id])
 end
  

  def set_user
    @user = User.find(params[:user_id])
  end

  def user_params
    params.require(:user).permit(:username)
  end

  # prevents users from creating, editing, deleting a tip that wasn't created by them
  def require_ownership
    if current_user.nil?
      redirect_to root_path
      flash[:notice] = "Sorry, you don't have access to this function"
    elsif current_user.username != params[:user_id]
      redirect_to user_path(current_user)
      flash[:notice] = "Sorry, you don't have access to this function"
    end
  end

end