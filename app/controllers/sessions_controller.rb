class SessionController < ApplicationController

	def create
		user = User.find_by(:email => params[:email])
		if user.email.present? && user.password.authenticate(params[:password])
			session[:user_id] = @user.id
			flash[:notice] = "Welcome back"
			redirect_to user_url(@user)
		else
			flash[:error] = "Something went wrong"
			redirect_to new_session_url

		end
	end

	def destroy
		reset_session
		flash[:notice] = "Log Out Successful"
	end

	def new


	end

end
