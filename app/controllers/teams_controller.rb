class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
  	@team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @user_id = session[:user_id]
    @logged_in = !!@user_id
    byebug
    if @logged_in
      @current_user = User.find(@user_id)
      @team = Team.create(team_params)
    end
    redirect_to new_character_path
  end

  def edit 
  	@team = Team.find(params[:id])
  end

  def update
  	@team = Team.find(params[:id])
  	@team.update(team_params)
  	redirect_to team_path(@team)
  end

  def destroy
  	@team = Team.find(params[:id])
  	@team.destroy
  	redirect_to teams_path
  end

  private

    def team_params
      params.require(:team).permit(:name, :win, :user_id)
    end
end
