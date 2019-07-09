class TasksController < ApplicationController
  def new
  	@task = Task.new
  end

  def create
  	@task = Task.create(character_id: session[:character_id])
  	@task.type = @task.top_stat
  	@task.save
  	if @task.begin
  	  redirect_to task_path(@task)
  	else
  	  redirect_to user_path(@task.user)
  	end
  end

end
