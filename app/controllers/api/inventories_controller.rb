class Api::InventoriesController < ApplicationController
	def create_by_room
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
		 render :status => 200,
                :json => { :success => true,
                           :info => "Tất cả thông tin kiểm kê đã được lưu thành công. Chọn phòng thực hành khác để kiểm kê.",
                           :data => "" }
	end
	def create_by_device
		phong_thuc_hanh = PhongThucHanh.find_by(ma_pth: params[:lab_room_id])
		id_dot = params[:id_dot]
		ma_thiet_bi = params[:device][:ma_thiet_bi]
		so_luong_thuc_te = params[:device][:so_luong_thuc_te]
		so_luong_thiet_bi_binh_thuong = params[:device][:so_luong_thiet_bi_binh_thuong]
		so_luong_thiet_bi_hong = params[:device][:so_luong_thiet_bi_hong]
		so_luong_thiet_bi_thanh_li = params[:device][:so_luong_thiet_bi_thanh_li]
		ghi_chu = params[:device][:ghi_chu]
		phong_thuc_hanh.kiem_ke.create(ma_thiet_bi: ma_thiet_bi, 
		    	                           so_luong_thuc_te: so_luong_thuc_te,
		    	                           so_luong_thiet_bi_binh_thuong: so_luong_thiet_bi_binh_thuong,
		    	                           so_luong_thiet_bi_hong: so_luong_thiet_bi_hong,
                                           so_luong_thiet_bi_thanh_li: so_luong_thiet_bi_thanh_li,
		   	                               ghi_chu: ghi_chu,
		   	                               thoi_gian:Time.now,
		   	                               id_dot: id_dot)
		# ma_thiet_bi = params[:device][]
	end

	def check_latest_inventory_per_device 
		ma_thiet_bi = params[:ma_thiet_bi]
		latest_inventory = KiemKe.where("ma_thiet_bi= ? AND YEAR(thoi_gian) = ?", ma_thiet_bi, Time.now.year).order("thoi_gian desc").first        
        byebug
        if latest_inventory.nil?
        	render :status => 200,
                :json => { :success => true,
                           :info => "",
                           :data => "" }
        else
        	render :status => 200,
                :json => { :success => true,
                           :info => "Thiết bị này đã được thực hiện kiểm kê cách đây "+(Time.now.to_date - latest_inventory.thoi_gian.to_date).to_i.to_s+ " ngày trong đợt "+(get_iv_season_by_id latest_inventory.id_dot.to_s).ten.to_s+". Bạn có muốn tiếp tục thực hiện kiểm kê không?",
                           :data => "" }

        end
    end
    def check_latest_inventory_per_room 
		ma_thiet_bi = params[:ma_pth]
		latest_inventory = KiemKe.where("ma_thiet_bi= ? AND thoi_gian = ?", ma_pth,(get_list_day_by_room ma_pth).first)      
        byebug
        if latest_inventory.nil?
        	render :status => 200,
                :json => { :success => true,
                           :info => "",
                           :data => "" }
        else
        	render :status => 200,
                :json => { :success => true,
                           :info => "Thiết bị này đã được thực hiện kiểm kê cách đây "+(Time.now.to_date - latest_inventory.thoi_gian.to_date).to_i.to_s+ " ngày trong đợt "+(get_iv_season_by_id latest_inventory.id_dot.to_s).ten.to_s+". Bạn có muốn tiếp tục thực hiện kiểm kê không?",
                           :data => "" }

        end
    end
end
