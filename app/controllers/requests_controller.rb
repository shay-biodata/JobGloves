class RequestsController < ApplicationController

    before_action :require_signin
    before_action :require_not_employer

    def create
        @job = Job.find(params[:job_id])
        @job.requests.create!(user: current_user)
        redirect_to @job, notice:"application sent"
    end

    def destroy
        @job = Job.find(params[:job_id])
        request = Request.find(params[:id])
        request.destroy
        redirect_to @job, alert:"The Application was canceled. "
    end




end
