class AuthController < ApplicationController
   def new
   end

	def create 
  	  @user = User.find_by(name: params[:username])
   	  if @user && @user.authenticate(params[:password])
		  flash[:message] = "Logging into #{@user.name}"
		  session[:user_id] = @user.id
	      redirect_to user_path(@user)
	  else
	    flash[:message] = "Invalid Username or Password."
	    redirect_to "/login"
	  end
	end

	def destroy
		session[:user_id] = nil
		redirect_to "/login"
	end

end