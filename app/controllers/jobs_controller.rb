class JobsController < ApplicationController

    before_action :require_signin, except: [:index, :show]
    before_action :require_employer, except: [:index, :show]

    before_action :set_job, except: [:index, :new,:create]
    before_action :set_positions, only:[:edit, :update,:new,:create]

    def index
        @jobs = Job.order(created_at: :desc)
    end

    def show
        @position = @job.position
        @requests = @job.requests
        if current_user
            @current_request = current_user.requests.find_by(job_id: @job.id)
        end
    end


    def edit
    end

    def update
        @job.position_id = params[:job][:position]
        if @job.update(job_params)
            redirect_to @job, notice:"Job successfully update"
        else
            render :edit
        end
    end


    def new
        @job = Job.new
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
            redirect_to jobs_path, alert:"#{job_title} Job successfully deleted!"
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
    



end
