class TasksController < ApplicationController

  def new
  	@task = Task.new
  end

  def create
  	@task = Task.create(character_id: session[:character_id])
  	@task.type = @task.top_stat
  	@task.save
  	redirect_to task_path(@task)
  end
end
