class JobsController < ApplicationController

    before_action :set_job, except: [:index, :new,:create]
    before_action :set_positions, only:[:edit, :update,:new,:create]

    before_action :require_signin, except: [:index, :show]
    before_action :require_employer, except: [:index, :show]
    before_action only: [:edit, :update, :destroy]  do
        require_user_to_current_job(@job)
    end
    

    def index
        @jobs = Job.order(created_at: :desc)
        
    end

    def show
        @position = @job.position
        @requests = @job.requests
        @job.occupied_by_id? ? @occupied_by = User.find(@job.occupied_by_id) : @occupied_by=false
        if current_user
            @current_request = current_user.requests.find_by(job_id: @job.id)
        end
    end


    def edit
        @users = User.where(employer:false)
    end

    def update
        @job.position_id = params[:job][:position]
        update_available_occuied_by
        if @job.update(job_params)
            redirect_to @job, notice:"Job successfully update"
        else
            render :edit
        end
    end


    def new
        @job = Job.new
        @users = User.where(employer:false)

    end

    def create
        @job = Job.new(job_params)
        @job.user = current_user
        if @job.save
             redirect_to @job, notice:"Job Post Successfully created! "
        else
            render :new
        end
    end

    def destroy
        job_title = @job.title
        if @job.destroy
            redirect_to jobs_path, alert:"#{job_title} - Job successfully deleted!"
        else
            redirect_to @job, alert:"Somthing went wrong..."
        end
    end

    private

    def job_params
        params.require(:job).
        permit(:title, :description, :requirments,:position_id)
    end

    def set_job
        @job = Job.find(params[:id])

    end

    def set_positions
        @positions = Position.all
    end

    def update_available_occuied_by
        if params[:job][:available] == "true" && (@job.occupied_by_id != nil && @job.occupied_by_id != "")
            @job.occupied_by_id = nil
            @job.available = true
        elsif params[:job][:occupied_by] != "" && params[:job][:occupied_by] != nil 
            @job.occupied_by_id = params[:job][:occupied_by]
            @job.available = false
        elsif params[:job][:available] == "false"
            @job.available = false
        elsif params[:job][:available] == "true"
            @job.occupied_by_id = nil
            @job.available = true
        end
    end
    
    



end
