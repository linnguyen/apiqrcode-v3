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
			@time = KiemKe.all.map { |d| d.thoi_gian.strftime('%Y') }.uniq
         	@time.each do |t|
				@days << t
			end
		end
		return @days
	end

	def get_list_day_by_room ma_pth
		KiemKe.where('ma_pth = ? and YEAR(thoi_gian) = ?', ma_pth, Time.now.year).order('thoi_gian DESC').all.map { |d| d.thoi_gian }.uniq
    end

	def get_list_room
		@rooms =[]
		PhongThucHanh.all.each do |r|
			@rooms << r
		end
		return @rooms
	end

	def get_list_iv_season
		DotKiemKe.all
	end

	def get_iv_season_by_id id_dot
		DotKiemKe.find_by(id_dot)
	end

	def get_device_by_id ma_thiet_bi
		device = ChiTietNhapXuat.find_by(ma_thiet_bi: ma_thiet_bi)
	end
    
  def get_amount_of_output_device_by_room ma_pth,ma_thiet_bi
    # return device that have ma_phieu_xuat in ma_phieu_xuat of phong_thuc_hanh
       apx = []
       count = 0
       pth = PhongThucHanh.find(ma_pth)
       nhan_vien = pth.nhan_vien
       nhan_vien.each do |nv|
       	  nv.phieu_xuat.each do |px|
            apx << px.ma_phieu_xuat
          end
       end
       thiet_bi_xuat = ChiTietNhapXuat.where('ma_thiet_bi = ? and ma_phieu_nhap = ? and ma_phieu_xuat IN(?)', ma_thiet_bi,'',apx)
       thiet_bi_xuat.each do |tb|
          count = count + tb.so_luong
       end
       return count
  end

	def get_number_of_device_left ma_thiet_bi
		input_amount = 0
        input_device = ChiTietNhapXuat.where('ma_thiet_bi = ? ',ma_thiet_bi,"")
        input_device.each do |d|
           input_amount = input_amount + d.so_luong
        end
  end

  def get_staff_by_id ma_nql
      staff = NhanVien.find_by(ma_nql: ma_nql)
  end
  

end
