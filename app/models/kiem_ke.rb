class KiemKe < ApplicationRecord
	self.table_name = "tb_kiem_ke"
	 default_scope -> { order(thoi_gian: :desc) }
	 belongs_to :phong_thuc_hanh , foreign_key: "ma_pth", class_name: "PhongThucHanh"
     
     def self.search search
     	if search
     		where('ma_thiet_bi LIKE ?',search)
     	else
     		all
     	end
     end
end