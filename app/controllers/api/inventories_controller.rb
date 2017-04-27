class Api::InventoriesController < ApplicationController
	def create
		 phong_thuc_hanh = PhongThucHanh.find_by(ma_pth: params[:lab_room_id])
		 count = params[:array_of_device].size
		 id_dot = params[:id_dot]
         for i in 0...count
		    ma_thiet_bi = params[:array_of_device][i][:ma_thiet_bi]
		    so_luong_thuc_te = params[:array_of_device][i][:so_luong_thuc_te]
		    so_luong_thiet_bi_binh_thuong = params[:array_of_device][i][:so_luong_thiet_bi_binh_thuong]
		    so_luong_thiet_bi_hong = params[:array_of_device][i][:so_luong_thiet_bi_hong]
		    so_luong_thiet_bi_thanh_li = params[:array_of_device][i][:so_luong_thiet_bi_thanh_li]
		    ghi_chu = params[:array_of_device][i][:ghi_chu]
		  
		    phong_thuc_hanh.kiem_ke.create(ma_thiet_bi: ma_thiet_bi, 
		    	                           so_luong_thuc_te: so_luong_thuc_te,
		    	                           so_luong_thiet_bi_binh_thuong: so_luong_thiet_bi_binh_thuong,
		    	                           so_luong_thiet_bi_hong: so_luong_thiet_bi_hong,
                                           so_luong_thiet_bi_thanh_li: so_luong_thiet_bi_thanh_li,
		   	                               ghi_chu: ghi_chu,
		   	                               thoi_gian:Time.now,
		   	                               id_dot: id_dot)
		   # Time.now.strftime("%d/%m/%Y %H:%M")
		 end
	end
end
