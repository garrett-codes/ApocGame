class UsersController < ApplicationController
    
    before_action :find_user, only: [:show, :edit, :destroy]
    before_action :authorized, only: [:index, :show, :edit, :destroy]
    # before_action :require_login
    # skip_before_action :require_login, only: [:index, :show, :new]
    def index
      @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          session[:user_id] = @user.id
          @logged_in = !!@user_id
          redirect_to user_path(@user)
        else
          redirect_to new_user_path
        end
    end

    def show
        @characters = @user.characters
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
  	    @user.destroy
        session[:user_id] = nil
  	    redirect_to "/login"
    end


    private
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
