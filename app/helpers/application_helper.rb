module ApplicationHelper
	def full_title(page_title)
        base_title = "Trường Cao Đẳng Nghề Đà Nẵng"
        if page_title.empty?
        	base_title
        else
        	"#{page_title} | #{base_title}"
        end
	end

	# def get_list_day
	# 	@days=[]
	# 	@inventories = KiemKe.all
	# 	count = KiemKe.all.count
	# 	if count != 0 
    #       @days << @inventories[0].thoi_gian
	# 		for i in 1...count
	# 		if @inventories[i].thoi_gian.year == @inventories[i-1].thoi_gian.year
	# 		   if @inventories[i].thoi_gian.month == @inventories[i-1].thoi_gian.month
	# 		   	  next
	# 		   else
	# 		   	  @days << @inventories[i].thoi_gian
	# 		   end
	# 		else
	# 			@days << @inventories[i].thoi_gian
	# 		end
	# 	   end
	#     end
	# 	return @days
	# end

	def get_list_room
		@rooms =[]
		PhongThucHanh.all.each do |r|
			@rooms << r
		end
		return @rooms
	end

	def get_difference_quantity
        
	end
	def sida
	end

	def get_device_by_id thiet_bi_id
		device = ChiTietNhapXuat.find_by(thiet_bi_id: thiet_bi_id)
	end
end
