class TasksController < ApplicationController
  def new
  	@begin = false
  	@task = Task.new
  end

  def begin
  	@begin = true
  end

  def create
  	@task = Task.create(character_id: session[:character_id])
  	# byebug
  	@task.type = @task.top_stat
  	@task.save
  	if @task.begin
  	  redirect_to task_path(@task)
  	else
  	  redirect_to user_path(@task.user)
  	end
  end
end
