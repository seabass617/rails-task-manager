class TasksController < ApplicationController
    # INDEX to read many 
    def index 
        # get all of the restaurants 
        @tasks = Task.all 
    end

    def show 
        @task = Task.find(params[:id])
    end

    def new 
        @task = Task.new
    end

    def create 
        @task = Task.new(strong_params)
        if @task.save
            # Redirect to the show page
            redirect_to task_path(@task.id)
          else
            render :new
          end
    end

    def edit
        @task = Task.find(params[:id])
    end
    
    def update
        @task = Task.find(params[:id])
        if @task.update(strong_params)
          redirect_to task_path(@task.id)
        else
          render :edit
        end
    end

    def destroy
        @task = Task.find(params[:id])  
        @task.destroy
    
        redirect_to tasks_path
      end

    private

    def strong_params
        return params.require(:task).permit(:title, :details)
    end

end