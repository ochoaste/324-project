class UsersController < ApplicationController

def show
    @adoptee = Adoptee.find(params[:id])
  end
  
def new
  end
end
