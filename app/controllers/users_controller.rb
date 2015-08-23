class UsersController < ApplicationController
  def index
  end

  def new
    if current_user
      redirect_to profile_path(current_user)
    else
      @user = User.new
      render :new
    end
  end

  def create
    @user = User.new(user_params) 
    if @user.save 
     session[:user_id] = @user.id 
     redirect_to profile_path(current_user) 
    else 
     redirect_to signup_path 
     flash[:danger] = @user.errors.full_messages.join(" , ")
    end 
  end

  def show
    @user = User.friendly.find(params[:username])
  end

  def edit
    id = params[:id]
    @user = User.friendly.find(params[:id])
    render :edit
  end

  def update
    id = params[:id]
    user = User.friendly.find(params[:id])
    if user && user.authenticate(user_params[:password])
      current_user.update_attributes(user_params)
      redirect_to profile_path(current_user)
    else
      redirect_to edit_user_path(current_user)
      flash[:info] = "Password is incorrect"
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone, :password, :username, :description)
    end
end
