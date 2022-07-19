class TasksController < ApplicationController
  before_action :set_task, only: [:destroy]

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:service_id, :performer_id, :order_id)
    end
end
