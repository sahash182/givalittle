class SessionsController < ApplicationController
# <<<<<<< HEAD
#   def login
#   end

#   def create
#     # make an http request to digits api to get user information
#     response = Typhoeus.get(params[:apiUrl], headers: { 'Authorization' => params[:authHeader] })
#     # if we get user information back, find a user with the given phone number
#     user_information = JSON.parse(response.body)
#     user = User.where(phone: user_information['phone_number']).first_or_create
#     # log in the user
#     session[:user_id] = user.id

#     render json: user
#   end

#   def logout
#     session[:user_id] = nil
#     redirect_to root_path
#   end

#   private
#     def user_params
#       params.require(:user).permit(:phone)
#     end
# end
# =======
	def new
		if current_user 
			redirect_to profile_path(current_user)
		else 
			render :new
		end
	end
	
	def create
		user = User.find_by_email(user_params[:email])
		if user && user.authenticate(user_params[:password])
			session[:user_id] = user.id
				# if user.is_npo
					redirect_to profile_path(current_user)
		# 		else
		# 			redirect_to profile_path(current_user)
		# 		end
		# else
			redirect_to login_path
		end
	end

	def destroy 
		session[:user_id] = nil
		redirect_to root_path

	end

	private
	def user_params
		params.require(:user).permit(:email, :password)
	end

end
# >>>>>>> ccd88f5521a25ab82b041c1273adeddd8a57eb8c
