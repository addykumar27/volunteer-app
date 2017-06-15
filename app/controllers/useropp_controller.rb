class UseroppController < ApplicationController
  before_action :require_ownership
  before_action :authenticate_user!

 
 

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