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
    shuffled_choices = [@task.correct, @task.wrong].shuffle
    @choice1 = shuffled_choices.pop
    @choice2 = shuffled_choices.pop
    # byebug
  end

  def update
    @task = Task.find(params[:id])
    #byebug
    @task.update(result: params[:task][:result])
    @task.determine_path
    # byebug
    if @task.result == @task.correct
      redirect_to task_path(Task.find(@task.next1))
    else
      redirect_to task_path(Task.find(@task.next2))
    end
  end
end
