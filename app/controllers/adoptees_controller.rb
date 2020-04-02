class AdopteesController < ApplicationController

# before_action :logged_in_user, only: [:index, :edit, :update]

def index
 @adoptees = Adoptee.paginate(page: params[:page]) 
 end

def show
    @adoptee = Adoptee.find(params[:id])
#debugger 
 end
  
def new
@adoptee = Adoptee.new
end
end
