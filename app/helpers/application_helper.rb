module ApplicationHelper
	def full_title(page_title)
        base_title = "Trường Cao Đẳng Nghề Đà Nẵng"
        if page_title.empty?
        	base_title
        else
        	"#{page_title} | #{base_title}"
        end
	end

	def get_list_day
		if KiemKe.all.count != 0
			@days= []
			@time = KiemKe.all.map { |d| d.thoi_gian.strftime('%m, %Y') }.uniq
			@time.each do |t|
				@days << t
			end
		end
		return @days
	end

	def get_list_room
		@rooms =[]
		PhongThucHanh.all.each do |r|
			@rooms << r
		end
		return @rooms
	end

	def get_device_by_id ma_thiet_bi
		device = ChiTietNhapXuat.find_by(ma_thiet_bi: ma_thiet_bi)
	end
    
    def get_amount_of_output_device_by_room ma_pth,ma_thiet_bi
        # tu phong -> nhanvien -> phieuxuat -> tim theo ma_tb
    end

	def get_number_of_device_left ma_thiet_bi
		input_amount = 0
        input_device = ChiTietNhapXuat.where('ma_thiet_bi = ? && ma_phieu_xuat = ?',ma_thiet_bi,"")
        input_device.each do |d|
           input_amount = input_amount + d.so_luong
        end

        # attual_amount = 
    end
end
