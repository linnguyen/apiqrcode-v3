module ApplicationHelper
	def full_title(page_title)
        base_title = "Device Management for Da Nang Vocational Training College"
        if page_title.empty?
        	base_title
        else
        	"#{page_title} | #{base_title}"
        end
	end

	def get_list_day
		@days=[]
		@inventories = KiemKe.all
		count = KiemKe.all.count
		for i in 0...count
			if @inventories[i].thoi_gian.year == @inventories[i-1].thoi_gian.year
			   if @inventories[i].thoi_gian.month == @inventories[i-1].thoi_gian.month
			   	  next
			   else
			   	  @days << @inventories[i].thoi_gian
			   end
			else
				@days << @inventories[i].thoi_gian
			end
		end
		return @days
	end

	def get_list_room
		@rooms =[]
		PhongThucHanh.each do |p|
			@rooms << p.phong_thuc_hanh
		end
		return @rooms
	end

	def get_difference_quantity

	end

	def get_device_by_id thiet_bi_id
		device = ChiTietNhapXuat.find_by(thiet_bi_id: thiet_bi_id)
	end
end
