class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    find_task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to index_path
  end

  def edit
    find_task
  end

  def update
    find_task
    updated_task = task_params
    updated_task[:completed] = params[:task][:completed] == 'true'
    @task.update(updated_task)
    redirect_to show_path(@task)
  end

  def destroy
    find_task
    @task.destroy
    redirect_to index_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
