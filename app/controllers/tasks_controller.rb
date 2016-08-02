class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    # Create the object with the inputs from the form
    @task = Task.new
  end

  def create
    # Give persistence to the object, store it in the DB
    #
    # @task = Task.new(name: params[:name], date:....)
    # @task = Task.new(params[:task])

    @task = Task.new(task_params)
    @task.save
    # This is the rails way

    #redirect to url: /tasks/:id
    redirect_to task_path(id: @task.id)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    @task.update(task_params)

    redirect_to task_path(id: @task.id)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    # It's private to access this variables
    params.require(:task).permit(:name, :date, :check)

  end


end
