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

def create
    @adoptee = Adoptee.new(adoptee_params)
    if @adoptee.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

def adoptee_params
      params.require(:adoptee).permit(:name, :age, :email, :personality,  :password,
                                   :password_confirmation)
    end

end
