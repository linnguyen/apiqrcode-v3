module SessionsHelper

	def remember(user)
		user.remember
		cookies.permanent.signed[:ma_nql] = user.ma_nql
        cookies.permanent[:remember_token] = user.remember_token
	end

	def forget(user)
        user.forget
        cookies.delete(:user_id)
        cookies.delete(:remember_token)
    end
    
    def log_in(user)
       session[:ma_nql] = user.id
    end
    
    def current_user
		@current_user ||= NhanVien.find_by(ma_nql: session[:ma_nql])
	end

	def logged_in?
		!current_user.nil?
	end
    
    def log_out
    	# forget(current_user)
    	session.delete(:ma_nql)
    	@current_user = nil
    end
end
