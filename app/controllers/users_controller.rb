class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    puts "signup upsigned (CREATE)"
    user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone, :password)
    end
end
