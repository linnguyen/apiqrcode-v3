module SessionsHelper

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
    	session.delete(:ma_nql)
    	@current_user = nil
    end
end
