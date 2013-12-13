class UsersController < ApplicationController
  before_action :signed_in_user,only: [:index,:update,:edit]
  before_action :correct_user,  only: [:edit, :update]
  before_action :admin_user,    only: :destroy

  def index
    @users = User.paginate(page: params[:page])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		#do some successful message
     sign_in @user
     flash[:success] = "Wellcome to the Sample App!"
      redirect_to @user
  	else
  		render 'new'
  	end
  end

  def show
  	@user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  
  def edit
  end

  def update
    if @user.update_attributes(user_params)
      #Handle a successful update
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
    
  private
    def user_params 
    	params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end

    def correct_user
       @user = User.find(params[:id])
       redirect_to (root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end


  

end
