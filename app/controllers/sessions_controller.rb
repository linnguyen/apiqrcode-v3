class SessionsController < ApplicationController
  def new
  end

  def create
  	user = NhanVien.find_by(ten_dang_nhap: params[:session][:ten_dang_nhap])
  	if user 
  		log_in user
  		redirect_to root_path
  	else
  		flash.now[:danger] = 'User / Password chưa đúng'
  		render 'new'
  	end
  end

  def destroy
  	 log_out
  	 redirect_to  sessions_new_path
  end
end
