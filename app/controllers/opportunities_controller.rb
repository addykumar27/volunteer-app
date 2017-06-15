class OpportunitiesController < ApplicationController
	def index
    @opportunities = Opportunity.all
  end

  def show
    set_opp
  end

  def new
    @opportunity = Opportunity.new
  end
  
  def create
    @opportunity = Opportunity.create(opportunity_params)
    redirect_to opportunities_path
    end
  

    def destroy 
     set_opp  
     @opportunity.destroy
     respond_to do |format|
      format.html { redirect_to opportunities_path, notice: 'Opportunity was successfully destroyed.' }
      format.json { head :no_content }
    end
   end

private

  def set_opp
    @opportunity = Opportunity.find(params[:id])
   end

def set_user
    @user = User.find(params[:user_id])
  end

def opportunity_params
  params.require(:opportunity).permit(:name, :location, :cause)
end
 end