class AuthController < ApplicationController
   def new
   end

    def create 
  	  @user = User.find_by(name: params[:name])
   	  if @user && @user.atuhenticate(params[:password])
  	    flash[:message] = "Logging into #{@user.name}"
	    redirect_to user_path(@user)
	  else
	    flash[:message] = "Invalid Username or Password."
	    redirect_to "/login"
	  end
	end
  # def destroy

  # end
end