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
    @team = Team.create(name: team_params[:name], user_id: @current_user.id)
    session[:team_id] = @team.id # need to first make user sign in after creating a user ##fix me!
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
