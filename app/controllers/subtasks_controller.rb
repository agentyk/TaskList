class SubtasksController < ApplicationController
        
        before_action :set_task
        before_action :set_subtask, only: [:show, :edit, :update, :destroy] #step 1
    
        def index
            @subtasks = Subtask.all
            @test = "THIS IS A TEST"
        end
        #everyth must be in the class
        def new
            @subtask = @task.subtasks.new
        end
    
        def create
            @subtask = @task.subtasks.new(subtask_params)
            if @subtask.save
                redirect_to task_path(@task)
            else
                render :new, status: :unprocessable_entity
            end
        end
    
        def show
    
        end
    
        def edit #step 3
    
        end
    
        def update
            if @subtask.update(subtask_params)
                redirect_to subtask_path(@subtask)
            else
                render :edit, status: unprocessable_entity
            end
    
        end
        
        def destroy
            if @subtask.destroy
                redirect_to subtasks_path
            else
                "ded"
                #usually you add an alert or popup
            end
        end
    
        private
    
        def set_task
            @task = Task.find(params[:task_id])
        end

        def set_subtask #step 2
            @subtask = Subtask.find(params[:id])
        end
    
        def subtask_params
            params.required(:subtask).permit(:user_story, :user_points, :status, :task_id)
        end
    
end
