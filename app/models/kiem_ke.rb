class KiemKe < ApplicationRecord
	self.table_name = "tb_kiem_ke"
	belongs_to :phong_thuc_hanh , foreign_key: "ma_pth", class_name: "PhongThucHanh"
end