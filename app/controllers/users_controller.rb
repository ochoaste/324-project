class UsersController < ApplicationController

def show
    @adoptee = Adoptee.find(params[:id])
#debugger 
 end
  
def new
  end
end
