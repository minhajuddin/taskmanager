class TasksController < ApplicationController

  def index
    if params[:complete] == "1"
      @tasks = Task.where(completed: false)
    elsif params[:complete] == "0"
      @tasks = Task.where(completed: true)
    else
      @tasks = Task.all
    end
  end

  def new
  end

  def create
    @task = Task.new(title: params[:title])
    @task.save
    redirect_to root_path
  end

  def update
    @task = Task.find(params[:id])
    @task.completed = true
    @task.completed_at = Time.now
    @task.save
    redirect_to root_path
  end

end
