class OrganizationsController < ApplicationController

def index
 	@organizations = Organization.all
end

def new
    @organization = Organization.new
  end
   
def show  
	set_org
end

  def create
    @organization = Organization.create(organization_params)
    redirect_to organizations_path
 end


 def destroy 
     set_org  
     @organization.destroy
     respond_to do |format|
      format.html { redirect_to opportunities_path, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
   end

private

def set_org
   @organization = Organization.find(params[:id])
end
  

def set_user
  @user = User.find(params[:user_id])
end
 
def organization_params   
    params.require(:organization).permit(:name, :location, :mission_statement, :description, :website)
  end
end
