class TasksController < ApplicationController

  def set_session
   session[:selected] = params[:some_select]
  end

  def new
  	@task = Task.new
  end

  def create
  	@task = Task.create(character_id: session[:character_id])
  	@task.task_type = @task.top_stat
  	@task.save
  	redirect_to task_path(@task)
  end

  def show
  	@task = Task.find(params[:id])
  end

  def update
    # redirect_to
  end
end
