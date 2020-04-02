class AdopteesController < ApplicationController

# before_action :logged_in_user, only: [:index, :edit, :update]

def index
  @adoptees = Adoptee.all 
 end

def show
    @adoptee = Adoptee.find(params[:id])
#debugger 
 end
  
def new
@adoptee = Adoptee.new
end
end
