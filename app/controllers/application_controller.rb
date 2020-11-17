class ApplicationController < ActionController::Base

    private

    def require_user_to_current_job(job)
        unless job.user == current_user
            redirect_to root_url, alert: "Unauthorized access!"
        end
    end


    def require_signin
        unless current_user
            session[:intended_url] = request.url
            redirect_to new_session_url, alert:"Please sign in first!"
        end
    end

    def require_employer
        unless current_user_employer?
          redirect_to root_url, alert: "Unauthorized access!"
        end
    end

    def require_not_employer
        if current_user_employer?
            redirect_to root_url, alert: " No valid for employers"
        end
    end
    helper_method :require_not_employer
      
    def current_user_employer?
        current_user && current_user.employer?
    end

    helper_method :current_user_employer?
  
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    helper_method :current_user

    def current_user?(user)
        current_user == user
    end
    
    helper_method :current_user?

    def requests_by_status(requests,status_id)
        requests.where(request_status_id:status_id)
    end

    helper_method :requests_by_status


end
