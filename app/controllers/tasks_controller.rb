class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update delete]
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path
    else
      render :new, status: :unproccesable_entity
    end
  end

  def index
    @task = Task.all
  end

  def show; end

  def edit; end

  def update
    @task.update(task_params)
    redirect_to task_path
  end

  def destroy
    @task.destroy
    redirect_to task_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
