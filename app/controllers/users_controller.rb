class UsersController < ApplicationController

	def index
    @users = User.all
  end

  def show
		require_login
    	@user = User.find(params[:id])
 		if @user
      		login(@user)
      		flash[:notice] = "Successfully logged in."      
      	else
      		flash[:error] = "Incorrect email or password."  
      		redirect_to login_path
      end
  	end

end