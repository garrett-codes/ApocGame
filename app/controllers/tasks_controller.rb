class TasksController < ApplicationController
  def new
  	@task = Task.new
  end

  def create
  	@task = Team.create(name: team_params[:name], team_id: session[:team_id])
  end
end
