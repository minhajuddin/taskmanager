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

  def edit
    @task = Task.find(params[:id])
  end

  def update_title
    @task = Task.find(params[:id])
    @task.title = params[:title]
    @task.save
    redirect_to root_path
  end

  def update
    @task = Task.find(params[:id])
    if @task.completed
      @task.completed = false
      @task.completed_at = nil
    else
      @task.completed = true
      @task.completed_at = Time.now
    end
    @task.save
    redirect_to root_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

end
