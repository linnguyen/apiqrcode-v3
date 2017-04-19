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

    def logged_in_user
        unless logged_in?
        # redirect_to sessions_new_path(@messages: "Vui lòng đăng nhập")
         redirect_to login_path
        end
    end
    
    def is_admin?
        current_user.ma_qtc == 1
    end
end
