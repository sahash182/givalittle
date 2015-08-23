class CharitiesController < ApplicationController

	def index 
		@charity = Charity.all
		render :index
	end

	def new
		@charity = Charity.new
		render :new
	end

	def create
		charity = current_user.charities.new(charity_params)
		# if 
		charity.save
			redirect_to charity_path(charity)
		# else
		# 	redirect_to root_path
		# end
	end

	def show
		@charity = Charity.find(params[:id])
		render :show
	end

	def edit
		@charity = Charity.find(params[:id])
		render :edit
	end

  def update
    charity = Charity.find(params[:id])
    if current_user.charities.include? charity
        charity.update_attributes(charity_params)
        redirect_to charity_path(charity)
    else
      redirect_to signup_path
    end
  end

  def destroy
    charity = Charity.find(params[:id])
    if current_user.charities.include? charity
      charity.destroy
      redirect_to profile_path(current_user)
    else
      redirect_to login_path
    end
  end

	private 
	def charity_params 
		params.require(:charity).permit(:charity_name, :mission)
	end
end
