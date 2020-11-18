class RequestsController < ApplicationController

    before_action :require_signin
    before_action :require_not_employer, only:[:create,:destroy]
    before_action :set_job
    before_action  only:[:update] do 
        current_employer_equal_to_request(@job, true)
    end

    def create
        @job.requests.create!(user: current_user)
        redirect_to @job, notice:"application sent"
    end

    def edit
    end

    def update
        request = Request.find(params[:request_id])
        if request.update(request_status_id:params[:status_id])
            redirect_to user_url(:page => 'applicants'), notice: "Request #{request.request_status.title} "
        else
            redirect_to user_url(:page => 'applicants'), notice: "Please Try later "
        end

    end

    def destroy
        request = Request.find(params[:id])
        request.destroy
        redirect_to @job, alert:"The Application was canceled. "
    end

    private

    def set_job
        @job = Job.find(params[:job_id])
    end


end
