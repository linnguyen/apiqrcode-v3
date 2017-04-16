module ApplicationHelper
	def get_list_day
		@days=[]
		KiemKe.all.each do |k|
			@days << k.thoi_gian
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

	def get_name_device_by_id id
		
	end
end
