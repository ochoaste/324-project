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

def create
    @adoptee = Adoptee.new(adoptee_params)
    if @adoptee.save
          flash[:success] = "You are soon on your way to being adopted!" 
 redirect_to @adoptee
    else
      render 'new'
    end
  end

def adoptee_params
      params.require(:adoptee).permit(:name, :age, :email, :personality,  :password,
                                   :password_confirmation)
    end

end
