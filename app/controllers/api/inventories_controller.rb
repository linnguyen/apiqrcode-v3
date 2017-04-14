class Api::InventoriesController < ApplicationController
	def create
		# byebug
		 phong_thuc_hanh = PhongThucHanh.find_by(ma_pth: params[:lab_room_id])
		 count = params[:array_of_device].size
         for i in 0...count
		    ma_thiet_bi = params[:array_of_device][i][:code_of_device]
		    so_luong_thuc_te = params[:array_of_device][i][:actual_amount]
		    ghi_chu = params[:array_of_device][i][:note]
		    phong_thuc_hanh.kiem_ke.create(ma_thiet_bi: code_of_device, so_luong_thuc_te: actual_amount, 
		   	                           ghi_chu: note, thoi_gian: Time.now)
		   # Time.now.strftime("%d/%m/%Y %H:%M")
		 end
	end
end
