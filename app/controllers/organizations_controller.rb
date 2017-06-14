class OrganizationsController < ApplicationController

def index
 	@organizations = Organization.all
end

def show  
	set_org
end

 

private

def set_org
   @organization = Organization.find(params[:id])
end
  

def set_user
  @user = User.find(params[:user_id])
end
 

end
